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

APP_DATA appData;

DRV_HANDLE delayTimer;
uint32_t delay_ms;

extern DRV_I2C_BUFFER_HANDLE ov2640I2CHandler;
DRV_I2C_BUFFER_EVENT i2cOpStatus;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************
void APP_TimerCallback( uintptr_t context, uint32_t alarmCount )
{
    delay_ms++;
    PLIB_PORTS_PinToggle(PORTS_ID_0, PORT_CHANNEL_J, PORTS_BIT_POS_14);
}

void I2CMasterOpStatusCb ( DRV_I2C_BUFFER_EVENT event,
                           DRV_I2C_BUFFER_HANDLE bufferHandle,
                           uintptr_t context);

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
    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            
            DRV_TMR_AlarmRegister(delayTimer, 25240, true, 0, APP_TimerCallback);
            DRV_TMR_AlarmEnable(delayTimer, true);
            /* Start Timer 3 */
            DRV_TMR_Start(delayTimer);
            
            
            /* I²C Initialisation */
            //ov2640I2CHandler = DRV_I2C_Open( DRV_I2C_INDEX_0, DRV_IO_INTENT_READWRITE );

            /* event-handler set up receive callback from DRV_I2C_Tasks */
            //DRV_I2C_BufferEventHandlerSet(ov2640I2CHandler, I2CMasterOpStatusCb, i2cOpStatus );
       
//            if(ov2640I2CHandler == (DRV_HANDLE) NULL)
//            {
//                while(1){}
//            }
        
            appData.state = APP_STATE_CAMERA_INIT;
            break;
        }
        
        case APP_STATE_CAMERA_INIT:
        {
            ov2640Initialisation();

            appData.state = APP_STATE_SERVICE_TASKS;
              
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

void I2CMasterOpStatusCb ( DRV_I2C_BUFFER_EVENT event,
                           DRV_I2C_BUFFER_HANDLE bufferHandle,
                           uintptr_t context)
{
    static uint32_t successCount = 0;
    
    switch (event)
    {
        case 0:
            successCount++;
            Nop();
            break;
        case 1:
            successCount--;
            break;
        default:
            break;
    }
}

/*******************************************************************************
 End of File
 */
