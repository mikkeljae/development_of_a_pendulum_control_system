# Makefile for programming the ATtiny84

DEVICE      = attiny84
CLOCK      = 8000000
PROGRAMMER = -c usbtiny 
#OBJECTS    = main.o

SOURCEDIR:=.
BUILDDIR:=bin/
INCLUDEDIR:=include/

SOURCES := $(shell find $(SOURCEDIR) -name '*.c')
INCLUDE := $(shell find $(SOURCEDIR) -name '*.h')
OBJECTS := $(SOURCES:%.c=%.o)


# for ATTiny84
# see http://www.engbedded.com/fusecalc/
FUSES       =-U lfuse:w:0xe2:m -U hfuse:w:0xdf:m -U efuse:w:0xff:m 
AVRDUDE = avrdude $(PROGRAMMER) -p $(DEVICE)
#COMPILE = avr-gcc -Wall -Os -DF_CPU=$(CLOCK) -mmcu=$(DEVICE)
COMPILE = avr-gcc -Wall -Os -DF_CPU=$(CLOCK) -mmcu=$(DEVICE)

# symbolic targets:
all:	main.hex
	@echo "OBJECTS"
	@echo $(value OBJECTS)
	@echo "Sources"
	@echo $(value SOURCES)
	@echo "Includes"
	@echo $(value INCLUDE)
%.o : %.c $(INCLUDE)
	$(COMPILE) -c $< -o $@ -I $(INCLUDEDIR)

flash:	all
	$(AVRDUDE) -U flash:w:main.hex:i

fuse:
	$(AVRDUDE) $(FUSES)

install: flash fuse

clean:
	rm -f main.hex main.elf $(OBJECTS)

# file targets:
main.elf: $(OBJECTS)
	$(COMPILE) -o main.elf $(OBJECTS)

main.hex: main.elf
	rm -f main.hex
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	avr-size --format=avr --mcu=$(DEVICE) main.elf
