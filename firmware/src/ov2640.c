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

#include "driver/tmr/drv_tmr.h"

#include "i2c_bitbanging.h"



extern DRV_HANDLE delayUsTimer;

extern volatile uint32_t delay_ms;
extern volatile uint32_t successCount;

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */
static volatile uint8_t global_data[CHANGE_REG_NUM*2];


/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */
void Delay_ms(unsigned int x);



/* ************************************************************************** */
/* ************************************************************************** */
// Section: Interface Functions                                               */
/* ************************************************************************** */
/* ************************************************************************** */

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
    
    BSP_CAM_PDNOn();
    Delay_ms(100);
    BSP_CAM_PDNOff();
    BSP_CAM_RESETOn();
    Delay_ms(10);
    BSP_CAM_RESETOff();
    
    Delay_ms(100);
    
    /* Start Timer 7 */
    DRV_TMR_Start(delayUsTimer);

    for(i = 0; i < CHANGE_REG_NUM; i++)
    {
        if(i2c_Write_Reg(DRV_CAMERA_OV2640_SCCB_WRITE_ID, change_reg[2*i], change_reg[2*i+1]))
        {
            /* Good working! */
            successCount++;
        }
    }
    
    for(i = 0; i < CHANGE_REG_NUM; i++)
    {
        global_data[2*i] = change_reg[2*i];
        global_data[2*i+1] = i2c_Read_Reg(DRV_CAMERA_OV2640_SCCB_WRITE_ID, change_reg[2*i]);
    }
    
    for(i = 0; i < 219; i++)
    {
        if(i2c_Write_Reg(DRV_CAMERA_OV2640_SCCB_WRITE_ID, OV2640_QVGA[2*i], OV2640_QVGA[2*i+1]))
        {
            /* Good working! */
            successCount++;
        }
    }
    /* Start Timer 7 */
    DRV_TMR_Stop(delayUsTimer);
    
    return;
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
