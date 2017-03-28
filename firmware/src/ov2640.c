/* ************************************************************************** */
/** OV2640 Camera Source file

  @File Name
    ov2640.c

  @Summary
    SCCB interface and pixel processing.

  @Description
    Configuration af the OV2640 camera through SCCB (I²C) interface and
    DMA initialisation and pixel processing.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */
#include <stdbool.h>
#include <stdint.h>

#include "ov2640.h"
#include "ov2640_reg_table.h"
#include "i2c_master_noint.h"

#include "driver/i2c/drv_i2c.h"
#include "driver/tmr/drv_tmr.h"


DRV_I2C_BUFFER_HANDLE ov2640I2CHandler;

extern volatile uint32_t delay_ms;
extern volatile uint32_t successCount;

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

/* ************************************************************************** */
/** Descriptive Data Item Name

  @Summary
    Brief one-line summary of the data item.
    
  @Description
    Full description, explaining the purpose and usage of data item.
    <p>
    Additional description in consecutive paragraphs separated by HTML 
    paragraph breaks, as necessary.
    <p>
    Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.
    
  @Remarks
    Any additional remarks
 */
static volatile int global_data;


/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */
void Delay_ms(unsigned int x);
DRV_I2C_BUFFER_HANDLE DRV_CAMERA_OVM7690_RegisterSet(uint8_t regIndex, uint8_t regValue);
uint8_t DRV_CAMERA_OVM7690_RegisterGet(uint8_t regIndex);

/*  A brief description of a section can be given directly below the section
    banner.
 */



/* ************************************************************************** */
/* ************************************************************************** */
// Section: Interface Functions                                               */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

// *****************************************************************************

/** 
  @Function
    void ov2640Initialisation ( void ) 

  @Summary
    Initialisation of SCCB and DMA for pixel processing.

  @Remarks
    Initialisation of SCCB and DMA for pixel processing.
 */
void ov2640Initialisation(void) {
    uint8_t i;
//    uint8_t timeout;
    
    BSP_CAM_PDNOff();
    BSP_CAM_RESETOn();
    Delay_ms(10);
    BSP_CAM_RESETOff();
    
    Delay_ms(100);
    
    DRV_I2C_BUFFER_HANDLE handler;
    for(i = 0; i < CHANGE_REG_NUM; i++)
    {
        handler = DRV_CAMERA_OVM7690_RegisterSet(change_reg[2*i], change_reg[2*i+1]);
        Delay_ms(1);
        //timeout = 0;
        if(handler != (DRV_HANDLE) NULL)
        {
            if(DRV_I2C_BUFFER_EVENT_ERROR == DRV_I2C_TransferStatusGet(ov2640I2CHandler, handler))
            {
                //handler = DRV_CAMERA_OVM7690_RegisterSet(change_reg[2*i], change_reg[2*i+1]);
                successCount = i;
            }
        }
//        while(DRV_I2C_BUFFER_EVENT_COMPLETE != DRV_I2C_TransferStatusGet(ov2640I2CHandler, handler))
//        {
//            Delay_ms(1);
//            timeout++;
//            if(timeout > 5)
//            {
//                while(1)
//                {
//                    PLIB_PORTS_PinToggle(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_10);
//                }
//            }
//        }
    }
    
    
//    DRV_I2C_Close( ov2640I2CHandler );
//    Delay_ms(1);
//    ov2640I2CHandler = DRV_I2C_Open( DRV_I2C_INDEX_0, DRV_IO_INTENT_READWRITE );
//    for(i = 20; i < 40; i++)
//    {
//        DRV_CAMERA_OVM7690_RegisterSet(change_reg[2*i], change_reg[2*i+1]);
//        Delay_ms(1);
//    }
//    DRV_I2C_Close( ov2640I2CHandler );
//    Delay_ms(1);
//    ov2640I2CHandler = DRV_I2C_Open( DRV_I2C_INDEX_0, DRV_IO_INTENT_READWRITE );
//    for(i = 40; i < 60; i++)
//    {
//        DRV_CAMERA_OVM7690_RegisterSet(change_reg[2*i], change_reg[2*i+1]);
//        Delay_ms(1);
//    }
//    DRV_I2C_Close( ov2640I2CHandler );
//    Delay_ms(1);
//    ov2640I2CHandler = DRV_I2C_Open( DRV_I2C_INDEX_0, DRV_IO_INTENT_READWRITE );
//    for(i = 60; i < 80; i++)
//    {
//        DRV_CAMERA_OVM7690_RegisterSet(change_reg[2*i], change_reg[2*i+1]);
//        Delay_ms(1);
//    }
//    DRV_I2C_Close( ov2640I2CHandler );
//    Delay_ms(1);
//    ov2640I2CHandler = DRV_I2C_Open( DRV_I2C_INDEX_0, DRV_IO_INTENT_READWRITE );
//    for(i = 80; i < 100; i++)
//    {
//        DRV_CAMERA_OVM7690_RegisterSet(change_reg[2*i], change_reg[2*i+1]);
//        Delay_ms(1);
//    }
    
    
    //CHANGE_REG_NUM
    return;
}



// *****************************************************************************
/* Function:
    DRV_CAMERA_OVM7690_ERROR DRV_CAMERA_OVM7690_RegisterSet 
    ( 
        DRV_CAMERA_OVM7690_REGISTER_ADDRESS regIndex, 
        uint8_t regValue 
    )

  Summary:
    Sets the camera OVM7690 configuration registers

  Description:
    This routine sets the Camera OVM7690 configuration registers using SCCB
    interface. 

  Precondition:
    The DRV_CAMERA_OVM7690_Initialize routine must have been called for the 
    specified Camera OVM7690 driver instance.

    DRV_CAMERA_OVM7690_Open must have been called to obtain a valid opened 
    device handle.

    The SCCB interface also must have been initialized to configure the Camera
    OVM7690.

  Parameters:
    regIndex - Defines the configuration register addresses for OVM7690.
    regValue - Defines the register value to be set.

  Returns:
    DRV_CAMERA_OVM7690_ERROR_INVALID_HANDLE - Invalid driver Handle.
    DRV_CAMERA_OVM7690_ERROR_NONE - No error.

  Example:
    <code>

       DRV_HANDLE handle;
       uint8_t reg12 = DRV_CAMERA_OVM7690_REG12_SOFT_RESET;

        handle = DRV_CAMERA_OVM7690_Open(DRV_CAMERA_OVM7690_INDEX_0, DRV_IO_INTENT_EXCLUSIVE);
        if (DRV_HANDLE_INVALID == handle)
        {
            //error
            return;    
        }

        if ( DRV_CAMERA_OVM7690_RegisterSet( DRV_CAMERA_OVM7690_REG12_REG_ADDR,
                                             reg12 ) != 
                                             DRV_CAMERA_OVM7690_ERROR_NONE )
        {
            //error
            return;
        }

    </code>

  Remarks:
    This routine can be used separately or within a interface.
 */

DRV_I2C_BUFFER_HANDLE DRV_CAMERA_OVM7690_RegisterSet 
( 
    uint8_t regIndex, 
    uint8_t regValue 
)
{
    uint8_t frame[2] = {0, 0};
    DRV_I2C_BUFFER_HANDLE handler;
    
    frame[0] = regIndex;
    frame[1] = regValue;
    
    
    handler = DRV_I2C_Transmit(ov2640I2CHandler,
                     DRV_CAMERA_OV2640_SCCB_WRITE_ID,
                     frame,
                     2,
                     NULL);
    
    return handler;
}


// *****************************************************************************
/* Function:
    DRV_CAMERA_OVM7690_ERROR DRV_CAMERA_OVM7690_RegisterSet 
    ( 
        DRV_CAMERA_OVM7690_REGISTER_ADDRESS regIndex, 
        uint8_t regValue 
    )

  Summary:
    Sets the camera OVM7690 configuration registers

  Description:
    This routine sets the Camera OVM7690 configuration registers using SCCB
    interface. 

  Precondition:
    The DRV_CAMERA_OVM7690_Initialize routine must have been called for the 
    specified Camera OVM7690 driver instance.

    DRV_CAMERA_OVM7690_Open must have been called to obtain a valid opened 
    device handle.

    The SCCB interface also must have been initialized to configure the Camera
    OVM7690.

  Parameters:
    regIndex - Defines the configuration register addresses for OVM7690.
    regValue - Defines the register value to be set.

  Returns:
    DRV_CAMERA_OVM7690_ERROR_INVALID_HANDLE - Invalid driver Handle.
    DRV_CAMERA_OVM7690_ERROR_NONE - No error.

  Example:
    <code>

       DRV_HANDLE handle;
       uint8_t reg12 = DRV_CAMERA_OVM7690_REG12_SOFT_RESET;

        handle = DRV_CAMERA_OVM7690_Open(DRV_CAMERA_OVM7690_INDEX_0, DRV_IO_INTENT_EXCLUSIVE);
        if (DRV_HANDLE_INVALID == handle)
        {
            //error
            return;    
        }

        if ( DRV_CAMERA_OVM7690_RegisterSet( DRV_CAMERA_OVM7690_REG12_REG_ADDR,
                                             reg12 ) != 
                                             DRV_CAMERA_OVM7690_ERROR_NONE )
        {
            //error
            return;
        }

    </code>

  Remarks:
    This routine can be used separately or within a interface.
 */

uint8_t DRV_CAMERA_OVM7690_RegisterGet 
( 
    uint8_t regIndex
)
{
    uint8_t frame[2] = {0, 0};
    
    frame[0] = regIndex;
    
    DRV_I2C_TransmitThenReceive(ov2640I2CHandler,
                                DRV_CAMERA_OV2640_SCCB_WRITE_ID,
                                &frame[0],
                                1,
                                &frame[1],
                                1,
                                NULL);
    
    return frame[1];
}

/*******************************************************************************

  Function:
    void Delay_ms (unsigned int x)

  Summary:
    Delay needed for the LCD to process data (in ms)
*/
void Delay_ms(unsigned int x)
{
    delay_ms = 0;
    while(delay_ms <= x){}
        
    return;
}

/* *****************************************************************************
 End of File
 */
