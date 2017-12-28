/*
 * rgb.c
 *
 *  Created on: Dec 8, 2017
 *      Author: thomas
 */

#include "rgb.h"
#include "xil_io.h"

void set_led(uint32_t rgb_addr, uint32_t channel, uint32_t value)
{
	Xil_Out32(rgb_addr+channel, value);
}

void set_red(uint32_t rgb_addr)
{
	set_led(rgb_addr,RGB_CHANNEL_R,LED_ON);
	set_led(rgb_addr,RGB_CHANNEL_G,LED_OFF);
	set_led(rgb_addr,RGB_CHANNEL_B,LED_OFF);
}

void set_green(uint32_t rgb_addr)
{
	set_led(rgb_addr,RGB_CHANNEL_R,LED_OFF);
	set_led(rgb_addr,RGB_CHANNEL_G,LED_ON);
	set_led(rgb_addr,RGB_CHANNEL_B,LED_OFF);
}

void set_blue(uint32_t rgb_addr)
{
	set_led(rgb_addr,RGB_CHANNEL_R,LED_OFF);
	set_led(rgb_addr,RGB_CHANNEL_G,LED_OFF);
	set_led(rgb_addr,RGB_CHANNEL_B,LED_ON);
}

void set_off(uint32_t rgb_addr)
{
	set_led(rgb_addr,RGB_CHANNEL_R,LED_OFF);
	set_led(rgb_addr,RGB_CHANNEL_G,LED_OFF);
	set_led(rgb_addr,RGB_CHANNEL_B,LED_OFF);
}
