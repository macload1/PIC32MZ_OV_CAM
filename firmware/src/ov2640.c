/* ************************************************************************** */
/** OV2640 Camera Source file

  @File Name
    ov2640.c

  @Summary
    SCCB interface and pixel processing.

  @Description
    Configuration af the OV2640 camera through SCCB (I�C) interface and
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

#include "driver/i2c/drv_i2c.h"
#include "driver/tmr/drv_tmr.h"


DRV_I2C_BUFFER_HANDLE ov2640I2CHandler;

extern uint32_t delay_ms;

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
volatile int global_data;


/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */
void Delay_ms(unsigned int x);
void DRV_CAMERA_OVM7690_RegisterSet(uint8_t regIndex, uint8_t regValue);
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
    BSP_CAM_PDNOff();
    BSP_CAM_RESETOn();
    Delay_ms(10);
    BSP_CAM_RESETOff();
    
    if(ov2640I2CHandler == DRV_HANDLE_INVALID)
    {
        while(1){}
    }
    
    global_data = DRV_CAMERA_OVM7690_RegisterGet(0x0A);
    
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

void DRV_CAMERA_OVM7690_RegisterSet 
( 
    uint8_t regIndex, 
    uint8_t regValue 
)
{
    uint8_t frame[2] = {0, 0};
    
    frame[0] = regIndex;
    frame[1] = regValue;
    
    DRV_I2C_Transmit(ov2640I2CHandler,
                     DRV_CAMERA_OV2640_SCCB_WRITE_ID,
                     frame,
                     2,
                     NULL);
    
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

uint8_t DRV_CAMERA_OVM7690_RegisterGet 
( 
    uint8_t regIndex
)
{
    uint8_t frame[2] = {0, 0};
    
    frame[0] = regIndex;
    
    DRV_I2C_TransmitThenReceive(ov2640I2CHandler,
                                DRV_CAMERA_OV2640_SCCB_WRITE_ID,
                                frame,
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