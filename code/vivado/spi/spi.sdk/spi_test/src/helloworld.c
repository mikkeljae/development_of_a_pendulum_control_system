/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xspips.h"

//GPIO DEFINES
#define GPIO_0  XPAR_GPIO_0_DEVICE_ID
#define GPIO_1  XPAR_GPIO_1_DEVICE_ID
#define DELAY	10000

//RF DEFINES
#define SPI_DEVICE_ID XPAR_PS7_SPI_1_DEVICE_ID
#define REGISTER_MASK 	0x1F			// to make sure only register is set
#define RX_EMPTY_MASK	0b00000001		// RX_EMPTY BIT LOCATION
#define ERX_P0_MASK		0b00000001

// From NRF24 datasheet:
#define W_REGISTER    	0x20
#define R_REGISTER    	0x00
#define RF_CONFIG		0x00		// Register 0x00
#define RF_SETUP		0x06		// Regsiter 0x06
#define RF_STATUS		0x07
#define RF_CH			0x05
#define RF_RX_ADDR_P0	0x0A
#define RF_FIFO_STATUS	0x17
#define RF_RX_PW_P0		0x11
#define RF_EN_RXADDR	0x02
#define SETUP_RETR		0x04

//RF SETTINGS
#define RF_SPEED_1MBPS	0b11010111	// RF SPEED = 1Mbps
#define RF_SETTINGS		0b01110000 	//(RX_DR) |(TX_DS) | (MAX_RT)
#define RF_CHANNEL		76
#define FLUSH_TX		0b11100001
#define FLUSH_RX		0b11100010
#define PWR_UP_MASK		0b00000010
#define RF_ADDRESS		0b00000001
#define PRIM_RX_MASK	0b00000001	// SET PRIM_RX TO RX
#define R_RX_PAYLOAD	0b01100001


static XSpiPs SPI;
XGpio Gpio_CE;
XGpio Gpio_CSN;

s32 SPI_init(XSpiPs *SPI_inst, int device_id);
s32 RF_write_register(XSpiPs *SPI_inst, u8 reg, u8 value);
u8 RF_read_register(XSpiPs *SPI_inst, u8 reg);
s8 RF_begin(XSpiPs *SPI_inst);
s8 RF_send_command(XSpiPs *SPI_inst, u8 command);
s8 RF_power_up(XSpiPs *SPI_inst);
s8 RF_start_listening(XSpiPs *SPI_inst);
s8 RF_read(XSpiPs *SPI_inst);
s8 RF_available(XSpiPs *SPI_inst);
s8 RF_open_reading_pipe(XSpiPs *SPI_inst);
s8 RF_write_address(XSpiPs *SPI_inst, u8 reg, u8 addr);

int main()
{
    init_platform();

    print("Hello World\n\r");

	u32 Data;
	int status;
	volatile int Delay;

	/* Initialize the GPIO driver */
	status = XGpio_Initialize(&Gpio_CE, GPIO_0);
	status = XGpio_Initialize(&Gpio_CSN, GPIO_1);
	XGpio_DiscreteWrite(&Gpio_CE, 1, 0);		// Set CE low

	// Try to wait 5ms after CE is set LOW
		int delay;
		int max_delay = 400000;
		for(delay = 0; delay < max_delay; delay++);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}




/*
	while(1){

			XGpio_DiscreteWrite(&Gpio_CE, 1, 1);
			//XGpio_DiscreteWrite(&Gpio_CSN, 1, 0);
			for (Delay = 0; Delay < DELAY; Delay++);
			XGpio_DiscreteWrite(&Gpio_CE, 1, 0);
			//XGpio_DiscreteWrite(&Gpio_CSN, 1, 0);
			for (Delay = 0; Delay < DELAY; Delay++);

	}
*/
	status = SPI_init(&SPI, SPI_DEVICE_ID);
	if (status != XST_SUCCESS) {
		xil_printf("SPI init failed!\r\n");
	}else{
		xil_printf("SPI init succeded!\r\n");
	}

	RF_begin(&SPI);
	for (Delay = 0; Delay < DELAY; Delay++);
	RF_open_reading_pipe(&SPI);
	// LETS TRY TO SET PA LEVEL
	//RF_write_register(&SPI,RF_SETUP, 0b00000001);

	RF_start_listening(&SPI);

	u8 config = 0;
	/*while(1){
		//config = RF_read_register(&SPI, RF_SETUP);

		u8 reg = 0x0A;
		u8 output =  (R_REGISTER | ( REGISTER_MASK & reg));
		u8 input_buffer[5];
		u8 output_buffer[] = {output, 0b11111111,0b11111111,0b11111111,0b11111111,0b11111111};
		XSpiPs_PolledTransfer(&SPI, &output_buffer, &input_buffer, 6); 	//Send 2 bytes. Receive 1 byte
		xil_printf("HEJ!!!\r\n");


//	xil_printf("new config: %d !\r\n",config);
	//	for (Delay = 0; Delay < 10000000; Delay++);

	}
*/



	while(1){

			status = RF_available(&SPI);
			u8 level = 0;


			// IF YOU WANT TO WRITE THEN REMEMBER TO SET RF_PWR

			if(status == 1){
				xil_printf("Available!!!\r\n");
			}else{
				xil_printf("NOT Available\r\n");
			}
			RF_read(&SPI);
			for (Delay = 0; Delay < 100000000; Delay++);
	}

    cleanup_platform();
    return 0;
}







s32 SPI_init(XSpiPs *SPI_inst, int device_id){

	int status;
	XSpiPs_Config *SPI_config;

	// Initialize the SPI device.
	SPI_config = XSpiPs_LookupConfig(device_id);
	if (NULL == SPI_config) {
		return XST_FAILURE;
	}

	status = XSpiPs_CfgInitialize(SPI_inst, SPI_config, SPI_config->BaseAddress);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Perform a self-test to check hardware build.
	status = XSpiPs_SelfTest(SPI_inst);
	if (status != XST_SUCCESS) {
		xil_printf("SPI SELFTEST Failed\r\n");
		return XST_FAILURE;
	}
	xil_printf("SPI SELFTEST SUCCEDED\r\n");

	// Set the SPI device as a master with manual start ....
XSpiPs_SetOptions(SPI_inst, XSPIPS_MANUAL_START_OPTION | XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION  );
//	XSpiPs_SetOptions(SPI_inst, XSPIPS_MANUAL_START_OPTION | XSPIPS_MASTER_OPTION   );
//	XSpiPs_SetOptions(SPI_inst, XSPIPS_MASTER_OPTION );

	u32 config_ref;
	config_ref = XSpiPs_ReadReg(SPI_inst->Config.BaseAddress, XSPIPS_CR_OFFSET);
	config_ref |= XSPIPS_CR_MANSTRT_MASK;
	XSpiPs_WriteReg(SPI_inst->Config.BaseAddress,XSPIPS_CR_OFFSET, config_ref);


	// Set the SPI device pre-scalar to divide by 128
	XSpiPs_SetClkPrescaler(SPI_inst, XSPIPS_CLK_PRESCALE_64);

	// Set slave select to 0
	u32 var1;
	var1 = XSpiPs_SetSlaveSelect(SPI_inst, (u8) 0);
	if (status != XST_SUCCESS) {
		xil_printf("Slave Selection failed\r\n");
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}


s32 RF_write_register(XSpiPs *SPI_inst, u8 reg, u8 value){
	u8 output =  (W_REGISTER | ( REGISTER_MASK & reg));
	u8 output_buffer[] = {output, value};
	XSpiPs_PolledTransfer(SPI_inst, &output_buffer, NULL, 2);  //Send 2 bytes. Don't receive anything

	return XST_SUCCESS;
}


u8 RF_read_register(XSpiPs *SPI_inst, u8 reg){
	u8 output =  (R_REGISTER | ( REGISTER_MASK & reg));
	u8 input_buffer[2];
	u8 output_buffer[] = {output, 0b11111111};
	XSpiPs_PolledTransfer(SPI_inst, &output_buffer, &input_buffer, 2); 	//Send 2 bytes. Receive 1 byte

	return input_buffer[1];
}

s8 RF_begin(XSpiPs *SPI_inst){
	s8 status = 0;

	// Reset config register and set 16-bit CRC - SHould we use 16-bit CRC????
	RF_write_register(&SPI,RF_CONFIG, 0x0C);
	RF_write_register(&SPI,SETUP_RETR, 0b01011111);		// NFR HAS THIS VALUE USING THE ARDUINO CODE



	//Read setup register
	u8 setup = RF_read_register(&SPI, RF_SETUP);

	// Set 1Mbps
	setup = (setup & RF_SPEED_1MBPS) & 0b11111001;	// 0b11111001 -JUST TO MATCH ARDUINO

	RF_write_register(&SPI, RF_SETUP, setup);

	// Verify the results should be removed???
	if(setup == RF_read_register(&SPI, RF_SETUP)){
		status = 1;
		xil_printf("SPI setup succeded!\r\n");
		xil_printf("SPI setup: %d !\r\n",setup);
	}

	// Write to Data ready FIFO, DATA SENT, MAX_RT --- WHY? CHECK...
	RF_write_register(&SPI, RF_STATUS, RF_SETTINGS);

	// Write to channel register that channel is 76
	RF_write_register(&SPI, RF_CH, RF_CHANNEL);

	// DEBUG - read channel

	status = RF_read_register(&SPI,RF_CH);
	xil_printf("RF channel: %d !\r\n",status);


	// Flush buffers
	RF_send_command(&SPI, FLUSH_RX);
	RF_send_command(&SPI, FLUSH_TX);

	// Startup the RF to Standy-I
	RF_power_up(&SPI);

	u8 config = RF_read_register(&SPI, RF_CONFIG);
	RF_write_register(&SPI, RF_CONFIG , config | PRIM_RX_MASK);


	return status;
}

s8 RF_send_command(XSpiPs *SPI_inst, u8 command){
	s8 status = 1;
	XSpiPs_PolledTransfer(SPI_inst, &command, NULL, 1); 	//Send 1 byte
	return status;
}

s8 RF_power_up(XSpiPs *SPI_inst){
	// Read config register and set PWR_UP to 1
	u8 config = RF_read_register(&SPI, RF_CONFIG);
	config = config | PWR_UP_MASK;
	RF_write_register(&SPI, RF_CONFIG, config);
	// Then wait. Max time until CE is allowed to be set high is 4.5ms according to datasheet p. 24
	// Wait is measured to be 5ms
	int delay;
	int max_delay = 400000;
	for(delay = 0; delay < max_delay; delay++);

	u8 status = RF_read_register(&SPI, RF_CONFIG);
	xil_printf("RF_CONFIG: %d !\r\n",status);
}


s8 RF_start_listening(XSpiPs *SPI_inst){
	s8 status = 0;

	u8 config = RF_read_register(&SPI, RF_CONFIG);
	xil_printf("config: %d !\r\n",config);

	config = config | PRIM_RX_MASK;
	RF_write_register(&SPI, RF_CONFIG, config);
	xil_printf("wanted config: %d !\r\n",config);
	config = RF_read_register(&SPI, RF_CONFIG);
	xil_printf("new config: %d !\r\n",config);


	u8 rf_status = RF_read_register(&SPI, RF_STATUS);
	rf_status = rf_status | RF_SETTINGS;
	RF_write_register(&SPI, RF_STATUS, rf_status);

	XGpio_DiscreteWrite(&Gpio_CE, 1, 1);

	// Then wait. 130us to datasheet p. 22
	// Wait is measures to be 160 uS
	int delay;
	int max_delay = 13000;
	for(delay = 0; delay < max_delay; delay++){};

	RF_write_address(&SPI, RF_RX_ADDR_P0, RF_ADDRESS);
	RF_send_command(&SPI, FLUSH_TX);

//	RF_write_address(&SPI, RF_RX_ADDR_P0, RF_ADDRESS);

	return status;
}

s8 RF_read(XSpiPs *SPI_inst){		// NOT USED????
	s8 status = 0;
	RF_send_command(&SPI,R_RX_PAYLOAD);
	u8 input_buffer[33];
	u8 output_buffer[33];
	output_buffer[0] = R_RX_PAYLOAD;
	xil_printf("ECEIVING:!\r\n");
	//for(i=0;i<33;i++){
	//while(1){
		XSpiPs_PolledTransfer(SPI_inst, &output_buffer, &input_buffer, 33); 	//Send 2 bytes. Receive 1 byte
		//xil_printf("%c\r\n",input_buffer);
	//}
		int i;
		for(i = 1; i< 32; i++){

		//	xil_printf("i_value: %d\r\n",i);
		//	xil_printf("i: %c\r\n",input_buffer[i]);
		//	xil_printf("d: %d\r\n",input_buffer[i]);
			xil_printf("%c",input_buffer[i]);

		}
		xil_printf("\r\n");
	return status;
}

s8 RF_available(XSpiPs *SPI_inst){
	s8 status;
	u8 fifo_status = RF_read_register(&SPI, RF_FIFO_STATUS);
	fifo_status = fifo_status & RX_EMPTY_MASK;	//Only look at RX_EMPTY_MASK bit

	if(fifo_status){	// FIFO is empty
		status = 0;
	}else{
		status = 1;		// FIFO is not empty
	}

	return status;
}


s8 RF_open_reading_pipe(XSpiPs *SPI_inst){
	s8 status=1;;
	RF_write_address(&SPI, RF_RX_ADDR_P0, RF_ADDRESS);
	RF_write_register(&SPI, RF_RX_PW_P0, 32);		// PAYLOAD SIZE... SHOULD BE ADJUSTED???


	u8 register_val = RF_read_register(&SPI ,RF_EN_RXADDR);
	register_val = register_val | ERX_P0_MASK;
	RF_write_register(&SPI, RF_EN_RXADDR, register_val);
	u8 status_en = RF_read_register(&SPI, RF_EN_RXADDR);
	xil_printf("RF_EN_RXADDR: %d !\r\n",status_en);
	return status;
}


s8 RF_write_address(XSpiPs *SPI_inst, u8 reg, u8 addr){
	s8 status = 0;
	u8 write_reg =  (W_REGISTER | ( REGISTER_MASK & reg));
	u8 output_buffer[] = {write_reg,0b00110000, 0b00110000, 0b00110000, 0b00110000, 0b00110001};// SHOULD NOT BE HARDCODED!!!!
	XSpiPs_PolledTransfer(SPI_inst, &output_buffer, NULL, 6); 	//Send 5 bytes. Receive nothing

	return status;
}
