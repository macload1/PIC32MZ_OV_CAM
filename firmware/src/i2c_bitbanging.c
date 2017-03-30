/* ************************************************************************** */
/** I²C Bitbanging

  @Author
    Tobias Xhonneux

  @File Name
    i2c_bitbanging.c

  @Summary
    Source file for I²C Bitbanging algorithm.

  @Description
    Implements functions for I²C Bitbanging.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */
#include "i2c_bitbanging.h"


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */
extern volatile uint32_t delay_us;


/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */
// Initiating a start condition
void i2c_Start(void)
{
    I2C_SCL_SET();
    I2C_SDA_SET();
    I2C_SCL_OUT();
    I2C_SDA_OUT();
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}
    I2C_SDA_CLEAR();
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}
    I2C_SCL_CLEAR();
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}
    return;
}

// Initiating a stop condition
void i2c_Stop(void)
{
    I2C_SDA_CLEAR();
    I2C_SDA_OUT();
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}
    I2C_SCL_SET();
    I2C_SCL_OUT();
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}
    I2C_SDA_SET();
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}
}

// Writing a bit.
void i2c_Write_Bit(uint8_t b)
{
    if(b > 0)
    {
        I2C_SDA_SET();
        I2C_SDA_OUT();
    }
    else
    {
        I2C_SDA_CLEAR();
        I2C_SDA_OUT();
    }
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}
    I2C_SCL_SET();
    I2C_SCL_OUT();
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}
    I2C_SCL_CLEAR();
    I2C_SCL_OUT();
}

// Reading a bit.
uint8_t i2c_Read_Bit(void)
{
    uint8_t b;
    I2C_SDA_IN();
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}
    I2C_SCL_SET();
    I2C_SCL_OUT();
    delay_us = 0;
    while(delay_us < I2C_CLOCK_DELAY){}

    if(I2C_SDA_READ())
        b = 0x01;
    else
        b = 0;

    I2C_SCL_CLEAR();
    I2C_SCL_OUT();

    return b;
}

// Writing a byte.
bool i2c_Write_Byte(uint8_t B,
                    bool start,
                    bool stop)
{
    uint8_t ack = 0;
    uint8_t i;

    if(start)
        i2c_Start();

    for(i = 0; i < 8; i++)
    {
        i2c_Write_Bit(B & 0x80);    // write the most-significant bit
        B <<= 1;                    // shift the byte by one and update
    }

    ack = i2c_Read_Bit();

    if(stop)
        i2c_Stop();

    if(ack > 0)
        return false;
    else
        return true;
}

// Reading a byte.
uint8_t i2c_Read_Byte(bool ack,
                      bool stop)
{
    uint8_t B = 0;
    uint8_t i;

    for(i = 0; i < 8; i++)
    {
        B <<= 1;
        B |= i2c_Read_Bit();
    }

    if(ack)
        i2c_Write_Bit(0);
    else
        i2c_Write_Bit(1);

    if(stop)
        i2c_Stop();

    return B;
}



/* ************************************************************************** */
/* ************************************************************************** */
// Section: Interface Functions                                               */
/* ************************************************************************** */
/* ************************************************************************** */
void i2c_Init(void)
{
    
    /* Set I²C lines as inputs */
    I2C_SCL_IN();
    I2C_SDA_IN();
    
    
    return;
}

// I2C writing a register.
bool i2c_Write_Reg(uint8_t address,
                   uint8_t reg,
                   uint8_t data)
{
    // start, send address, write
    if(i2c_Write_Byte(address, true, false))
    {
        // send desired register
        if(i2c_Write_Byte(reg, false, false))
        {
            // send data, stop
            if(i2c_Write_Byte(data, false, true))
                return true;
        }
    }

    return false;
}

// I2C reading a register
uint8_t i2c_Read_Reg(uint8_t address,
                     uint8_t reg)
{
    // start, send address, write
    if(i2c_Write_Byte(address, true, false))
    {
        // send desired register
        if(i2c_Write_Byte(reg, false, false))
        {
            // start again, send address, read
            if(i2c_Write_Byte(address | 0x01, true, false))
            {
                // read data
                return i2c_Read_Byte(false, true);
            }
        }
    }
    // return zero if NACKed
    return 0;
}


/* *****************************************************************************
 End of File
 */
