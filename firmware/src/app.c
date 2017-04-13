/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app.h"

#include "ov2640.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

volatile uint32_t successCount = 0;


APP_DATA appData;

DRV_HANDLE delayTimer;
volatile uint32_t delay_ms;

DRV_HANDLE delayUsTimer;
volatile uint32_t delay_us;

SYS_DMA_CHANNEL_HANDLE channelHandle;
volatile uint32_t line;
volatile uint32_t column;
uint8_t vsync_prev;
uint8_t href_prev;
volatile bool sampleCam;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************
void APP_TimerCallback( uintptr_t context, uint32_t alarmCount )
{
    delay_ms++;
    //PLIB_PORTS_PinToggle(PORTS_ID_0, PORT_CHANNEL_J, PORTS_BIT_POS_14);
}

void APP_TimerUsCallback( uintptr_t context, uint32_t alarmCount )
{
    delay_us++;
    PLIB_PORTS_PinToggle(PORTS_ID_0, PORT_CHANNEL_J, PORTS_BIT_POS_14);
}

void DMA_EventHandler(SYS_DMA_TRANSFER_EVENT event, SYS_DMA_CHANNEL_HANDLE handle, uintptr_t context)
{
    switch (event)
    {
        case SYS_DMA_TRANSFER_EVENT_COMPLETE: // We have ADC data
            SYS_DMA_ChannelDisable(channelHandle);
            successCount++;
            break;

        case SYS_DMA_TRANSFER_EVENT_ERROR:
            break;

        case SYS_DMA_TRANSFER_EVENT_ABORT:
            break;

        default:
            break;
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
    
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_J, PORTS_BIT_POS_14);

    delayTimer = DRV_TMR_Open(DRV_TMR_INDEX_0, 0);
    
    /* Initialise timer 7 for us delay */
    delayUsTimer = DRV_TMR_Open(DRV_TMR_INDEX_1, 0);
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */
#define BUFFER_COUNT    1
#define DISPLAY_WIDTH   480
#define DISPLAY_HEIGHT  272

extern uint16_t __attribute__((coherent, aligned(16))) frameBuffer[BUFFER_COUNT][DISPLAY_WIDTH * DISPLAY_HEIGHT];



uint16_t color = 0;

void APP_Tasks ( void )
{
//    uint8_t vsync, href;
    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            
            DRV_TMR_AlarmRegister(delayTimer, 25240, true, 0, APP_TimerCallback);
            DRV_TMR_AlarmEnable(delayTimer, true);
            /* Start Timer 8 */
            DRV_TMR_Start(delayTimer);
    
            DRV_TMR_AlarmRegister(delayUsTimer, 25, true, 0, APP_TimerUsCallback);
            DRV_TMR_AlarmEnable(delayUsTimer, true);
            
       
            CAM_VSYNCInput();
            CAM_HREFInput();
            vsync_prev = 0;
            href_prev = 0;
            sampleCam = false;
            ov2640Initialisation();
            
            
            /* Allocate a DMA channel */
            channelHandle = SYS_DMA_ChannelAllocate(DMA_CHANNEL_2);
            SYS_DMA_ChannelTransferEventHandlerSet(channelHandle, DMA_EventHandler, (uintptr_t)&appData);

            line = 0;
            

            appData.state = APP_STATE_CAMERA_INIT;
            break;
        }
        
        case APP_STATE_CAMERA_INIT:
        {
            //ov2640Initialisation();

            appData.state = APP_STATE_SERVICE_TASKS;
              //SYS_INT_SourceEnable(INT_SOURCE_EXTERNAL_3);
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {
//            color += 0x1111;
//            ptr = frameBuffer[0];
//            i = DISPLAY_WIDTH * DISPLAY_HEIGHT + 1;
//            while(--i)
//            {
//                *ptr++ = color;
//            }
//            delay = 0x3F0000;
//            while(delay--){}
            
            
            
//            vsync = CAM_VSYNCStateGet();
//            if(vsync != vsync_prev)
//            {
//                vsync_prev = vsync;
//                if(vsync == 0)
//                {
//                    //SYS_INT_SourceEnable(INT_SOURCE_EXTERNAL_3);
//                    line = 0;
//                }
//                else
//                {
//                    SYS_INT_SourceDisable(INT_SOURCE_EXTERNAL_3);
//                }
//            }
//            href = CAM_HREFStateGet();
//            if(href != href_prev)
//            {
//                href_prev = href;
//                if(href == 1)
//                {
//                    column = 0;
//                    line++;
//                    line = line %320;
//                    sampleCam = true;
//                    SYS_DMA_ChannelSetup(channelHandle,SYS_DMA_CHANNEL_OP_MODE_AUTO, DMA_TRIGGER_EXTERNAL_3);
//                    SYS_DMA_ChannelTransferAdd(channelHandle, (void*)&PORTK, 1, &frameBuffer[0][line*272], 240, 1);
//                    //SYS_DMA_ChannelTransferEventHandlerSet(channelHandle, DMA_EventHandler, (uintptr_t)&appData);
//                    SYS_DMA_ChannelEnable(channelHandle);
//                }
//                else
//                {
//                    sampleCam = false;
//                }
//            }
            
            appData.state = APP_STATE_SERVICE_TASKS;
              
            break;
        }
        

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

//****************************************************************************/
//  Function: Master Callback Function 
//
//  Callback from DRV_I2C_Tasks when I2C is configured in Master mode     
//****************************************************************************/



/*******************************************************************************
 End of File
 */
