#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>

#define CE 			PA7
#define CSN       	PB0
#define SCLK      	PA4
#define MOSI      	PA5
#define MISO      	PA6
#define LED			PB2

#define LOW			0
#define HIGH		1
#define EMPTY 		0
#define NOT_EMPTY 	1

// From NRF24 datasheet:
#define W_REGISTER    	0x20
#define R_REGISTER    	0x00
#define REGISTER_MASK 	0x1F		//Make sure only register is set
#define RF_CONFIG		0x00
#define RF_SETUP		0x06
#define RF_STATUS		0x07
#define RF_CH			0x05
#define RF_RX_ADDR_P0	0x0A
#define RF_TX_ADDR		0x10
#define RF_FIFO_STATUS	0x17
#define RF_RX_PW_P0		0x11
#define RF_EN_RXADDR	0x02
#define RF_SETUP_RETR	0x04
#define W_TX_PAYLOAD	0xA0
#define RF_EN_AA		0x01
#define RF_SETUP_AW		0x03

//RF SETTINGS
#define RF_SPEED_1MBPS	0b11010111	// RF SPEED = 1Mbps
#define RF_SETTINGS		0b01110000 	//(RX_DR) |(TX_DS) | (MAX_RT)
#define RF_CHANNEL		76
#define FLUSH_TX		0b11100001
#define FLUSH_RX		0b11100010
#define PWR_UP_MASK		0b00000010
#define RF_ADDRESS0		0b00110000
#define RF_ADDRESS1		0b00110000
#define RF_ADDRESS2		0b00110001
#define PRIM_RX_MASK	0b00000001	// SET PRIM_RX TO RX
#define R_RX_PAYLOAD	0b01100001
#define PAYLOAD_SIZE	32
#define RX_EMPTY_MASK	0b00000001 	// RX_EMPTY BIT LOCATION
#define ERX_P0_MASK		0b00000001
#define RF_MAX_OUT_P	0b00000110
#define RF_NO_ACK		0b00000000
#define RF_3_B_ADDR		0b00000001
#define RF_NO_RETRANS	0b00000000
#define RF_SETUP_SET	0b00000110

void set_CE(uint8_t state);
void spi_setup(void);
void spi_transfer(uint8_t *data, uint8_t *output, uint8_t bytes);
void RF_write_register(uint8_t reg, uint8_t value);
void RF_read_register(uint8_t reg, uint8_t *value);
void RF_begin(void);
void RF_send_command(uint8_t cmd);
void RF_power_up(void);
void RF_open_reading_pipe(void);
void RF_write_address(uint8_t reg, uint8_t *addr);
void RF_start_RX_mode(void);
void RF_start_TX_mode(void);
void RF_available(uint8_t *status);
void RF_open_writing_pipe(void);
void RF_set_TX_power(void);
void RF_write_payload(uint8_t *payload, uint8_t bytes);