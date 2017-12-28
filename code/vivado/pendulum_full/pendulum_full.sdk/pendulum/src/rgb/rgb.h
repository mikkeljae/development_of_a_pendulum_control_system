/*
 * rgb.h
 *
 *  Created on: Dec 8, 2017
 *      Author: thomas
 */

#ifndef SRC_RGB_RGB_H_
#define SRC_RGB_RGB_H_

#include <stdio.h>
#include "xparameters.h"

#define RGB0_BASEADDR	XPAR_RGB_LED_0_S00_AXI_BASEADDR
#define RGB1_BASEADDR	XPAR_RGB_LED_1_S00_AXI_BASEADDR
#define RGB2_BASEADDR	XPAR_RGB_LED_2_S00_AXI_BASEADDR
#define RGB_CHANNEL_R	0x04
#define RGB_CHANNEL_G	0x00
#define RGB_CHANNEL_B	0x08

#define LED_OFF			0xC350 //The LED is fully off at 0xC350 = 50000
#define LED_ON			0x9C40 //The LED is fully on at 0x00, however this luminosity is rivaled only by the sun.

void set_led(uint32_t rgb_addr, uint32_t channel, uint32_t value);
void set_red(uint32_t rgb_addr);
void set_green(uint32_t rgb_addr);
void set_blue(uint32_t rgb_addr);
void set_off(uint32_t rgb_addr);

#endif /* SRC_RGB_RGB_H_ */
