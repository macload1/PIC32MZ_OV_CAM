/* ************************************************************************** */
/** i2c bitbanging

  @Author
    Tobias Xhonneux

  @File Name
    i2c_bitbanging.h

  @Summary
    Header file for I²C Bitbanging algorithm.

  @Description
    Defines functions for I²C Bitbanging.
 */
/* ************************************************************************** */

#ifndef _I2C_BITBANGING_H    /* Guard against multiple inclusion */
#define _I2C_BITBANGING_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

#define I2C_CLOCK_DELAY         5       // (in us)

void i2c_Init(void);
bool i2c_Write_Reg(uint8_t address,
                   uint8_t reg,
                   uint8_t data);
uint8_t i2c_Read_Reg(uint8_t address,
                     uint8_t reg);

/* Function set for SDA */
#define I2C_SDA_SET()   PLIB_PORTS_PinSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_2)
#define I2C_SDA_CLEAR() PLIB_PORTS_PinClear(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_2)
#define I2C_SDA_OUT()   PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_2)
#define I2C_SDA_IN()    PLIB_PORTS_PinDirectionInputSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_2)
#define I2C_SDA_READ()  PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_2)
/* Function set for SCL */
#define I2C_SCL_SET()   PLIB_PORTS_PinSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_8)
#define I2C_SCL_CLEAR() PLIB_PORTS_PinClear(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_8)
#define I2C_SCL_OUT()   PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_8)
#define I2C_SCL_IN()    PLIB_PORTS_PinDirectionInputSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_8)


    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _I2C_BITBANGING_H */

/* *****************************************************************************
 End of File
 */
