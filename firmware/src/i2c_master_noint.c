#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "system_config.h"
#include "system_definitions.h"

// I2C Master utilities, 100 kHz, using polling rather than interrupts
// The functions must be callled in the correct order as per the I2C protocol
// Master will use I2C1 SDA1 (D9) and SCL1 (D10)
// Connect these through resistors to Vcc (3.3 V). 2.4k resistors recommended, 
// but something close will do.
// Connect SDA1 to the SDA pin on the slave and SCL1 to the SCL pin on a slave

void i2c_master_setup(void) {
    //PLIB_I2C_BaudRateSet(I2C_ID_3, SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_2), 100000);
    uint32_t clockFrequency = 100000000;
    I2C3BRG = (clockFrequency / 100000 / 2) - (clockFrequency / 10000000) - 2;
  //I2C3BRG = 390;                    // I2CBRG = [1/(2*Fsck) - PGD]*Pblck - 2 
                                    // Fsck is the freq (100 kHz here), PGD = 104 ns
  I2C3CONbits.ON = 1;               // turn on the I2C3 module
}

// Start a transmission on the I2C bus
void i2c_master_start(void) {
    I2C3CONbits.SEN = 1;            // send the start bit
    while(I2C3CONbits.SEN) { ; }    // wait for the start bit to be sent
}

void i2c_master_restart(void) {     
    I2C3CONbits.RSEN = 1;           // send a restart 
    while(I2C3CONbits.RSEN) { ; }   // wait for the restart to clear
}

void i2c_master_send(unsigned char byte) { // send a byte to slave
  I2C3TRN = byte;                   // if an address, bit 0 = 0 for write, 1 for read
  while(I2C3STATbits.TRSTAT) { ; }  // wait for the transmission to finish
  if(I2C3STATbits.ACKSTAT) {        // if this is high, slave has not acknowledged
    //NU32_WriteUART1("I2C3 Master: failed to receive ACK\r\n");
  }
}

unsigned char i2c_master_recv(void) { // receive a byte from the slave
    I2C3CONbits.RCEN = 1;             // start receiving data
    while(!I2C3STATbits.RBF) { ; }    // wait to receive the data
    return I2C3RCV;                   // read and return the data
}

void i2c_master_ack(int val) {        // sends ACK = 0 (slave should send another byte)
                                      // or NACK = 1 (no more bytes requested from slave)
    I2C3CONbits.ACKDT = val;          // store ACK/NACK in ACKDT
    I2C3CONbits.ACKEN = 1;            // send ACKDT
    while(I2C3CONbits.ACKEN) { ; }    // wait for ACK/NACK to be sent
}
//
//static uint32_t ReadCoreTimer(void);
//
//static uint32_t ReadCoreTimer()
//{
//    volatile uint32_t timer;
//
//    // get the count reg
//    asm volatile("mfc0   %0, $9" : "=r"(timer));
//
//    return(timer);
//}

#define BAUD_RATE_0         100000
#define BRG_1_TIME_0        SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_2)/(2*BAUD_RATE_0)

void i2c_master_stop(void) {          // send a STOP:
//  I2C3CONbits.PEN = 1;                // comm is complete and master relinquishes bus
//  while(I2C3CONbits.PEN) { ; }        // wait for STOP to complete
    
    
//    uint32_t starttime;
//    
//    /* Wait 1 BRG */
//    starttime = ReadCoreTimer();
//    while(ReadCoreTimer()-starttime < BRG_1_TIME_0);
//
//    /* Disable I2C */
//    I2C3CONbits.ON = 0;               // turn off the I2C3 module
//
//    /* Wait 2 BRG */
//    starttime = ReadCoreTimer();
//    while(ReadCoreTimer()- starttime < BRG_1_TIME_0);
//
//    /* Set SDA as I/P */
//    PLIB_PORTS_PinDirectionInputSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_2);
//    /* Wait 3 BRG */
//    starttime = ReadCoreTimer();
//    while(ReadCoreTimer()- starttime < BRG_1_TIME_0);

    I2C3CONbits.ON = 1;               // turn on the I2C3 module
              /* set SDA to 0 */
    PLIB_PORTS_PinClear(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_2);
              /* set SCL to 1 */
    PLIB_PORTS_PinSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_8);
              /* set SDA to O/P */
    PLIB_PORTS_PinDirectionOutputSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_2);
              /* set SCL to I/P */
    PLIB_PORTS_PinDirectionInputSet(PORTS_ID_0, PORT_CHANNEL_F, PORTS_BIT_POS_8);
}
