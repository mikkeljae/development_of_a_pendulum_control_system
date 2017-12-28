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
#include "khaos/rtcs.h"
#include "rgb/rgb.h"
#include "cart_counter/cart_counter.h"
#include "xgpio.h"

#define GPIO_DEVICE_ID XPAR_AXI_GPIO_0_DEVICE_ID

uint32_t led = 1;

void init_alive_task(void)
{
	set_led(RGB0_BASEADDR, RGB_CHANNEL_R, LED_OFF);
	set_led(RGB0_BASEADDR, RGB_CHANNEL_G, LED_OFF);
	set_led(RGB0_BASEADDR, RGB_CHANNEL_B, LED_OFF);
	set_led(RGB1_BASEADDR, RGB_CHANNEL_R, LED_OFF);
	set_led(RGB1_BASEADDR, RGB_CHANNEL_G, LED_OFF);
	set_led(RGB1_BASEADDR, RGB_CHANNEL_B, LED_OFF);
	set_led(RGB2_BASEADDR, RGB_CHANNEL_R, LED_OFF);
	set_led(RGB2_BASEADDR, RGB_CHANNEL_G, LED_OFF);
	set_led(RGB2_BASEADDR, RGB_CHANNEL_B, LED_OFF);
	_stop(0);

	//Start task
	_starts(ALIVE_TASK, MILLI_SEC(500));
}

void alive_task(void)
{
	// Toggles status LED every 1 sec.
	if(led)
	{
		set_green(RGB2_BASEADDR);
	}
	else
	{
		set_off(RGB2_BASEADDR);
	}

	/* Flip LEDs. */
	led = !led;
	//xil_printf("I'm alive!");

	// Wait 1 sec.
	_wait(MILLI_SEC(500));
}

void init_cart_task(void)
{
	_stop(0);

	//Start task
	_starts(CART_TASK, MICRO_SEC(100));
}

void cart_task(void)
{
	if(led)
	{
		set_green(RGB1_BASEADDR);
	}
	else
	{
		set_off(RGB1_BASEADDR);
	}

	uint32_t* pos = NULL;
	update_data();
	get_position(pos);

	xil_printf("%d\n\r",is_calibrated());
	xil_printf("%d\n\r",*pos);
	if(pos != NULL)
	{
		xil_printf("%d",*pos);
	}

	// Wait.
	_wait(MICRO_SEC(100));
}

int main()
{
    init_platform();

    print("Hello World\n\r");

    start_rtcs_scheduler();		// Call scheduler

    cleanup_platform();
    return 0;
}
