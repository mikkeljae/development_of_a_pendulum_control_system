
#include "xparameters.h"	/* SDK generated parameters */
#include "xplatform_info.h"
#include "xspips.h"			/* SPI device driver */
#include "xscugic.h"		/* Interrupt controller device driver */
#include "xil_exception.h"
#include "xil_printf.h"

#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define SPI_INTR_ID			XPAR_XSPIPS_1_INTR
#define FLASH_SPI_SELECT_0	0x00		// SHOULD BE RENAMED

static int SpiPsSetupIntrSystem(XScuGic *IntcInstancePtr, XSpiPs *SpiInstancePtr, u16 SpiIntrId);
static void SpiPsDisableIntrSystem(XScuGic *IntcInstancePtr, u16 SpiIntrId);
void SpiPsHandler(void *CallBackRef, u32 StatusEvent, unsigned int ByteCount);
int SpiPsFlashIntrExample(XScuGic *IntcInstancePtr, XSpiPs *SpiInstancePtr, u16 SpiDeviceId, u16 SpiIntrId);
static int FlashReadID(XSpiPs *SpiInstance);

static XScuGic IntcInstance;
static XSpiPs SpiInstance;

volatile int TransferInProgress;
int Error;

int main(void)
{
	int Status;

	xil_printf("SPI FLASH Interrupt Example Test \r\n");

	Status = SpiPsFlashIntrExample(&IntcInstance, &SpiInstance, SPI_DEVICE_ID, SPI_INTR_ID);

	if (Status != XST_SUCCESS) {
		xil_printf("SPI FLASH Interrupt Example Test Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran SPI FLASH Interrupt Example Test\r\n");
	return XST_SUCCESS;
}


int SpiPsFlashIntrExample(XScuGic *IntcInstancePtr, XSpiPs *SpiInstancePtr, u16 SpiDeviceId, u16 SpiIntrId)
{
	int Status;
	u32 ChipSelect = FLASH_SPI_SELECT_0;	// CHANGED FROM 1
	XSpiPs_Config *SpiConfig;
	xil_printf("1\r\n");
	SpiIntrId = XPAR_XSPIPS_1_INTR;

	/*
	 * Initialize the SPI driver so that it's ready to use
	 */
	SpiConfig = XSpiPs_LookupConfig(SpiDeviceId);
	if (NULL == SpiConfig) {
		return XST_FAILURE;
	}
	xil_printf("3\r\n");

	Status = XSpiPs_CfgInitialize(SpiInstancePtr, SpiConfig,
					SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	xil_printf("4\r\n");

	/*
	 * Perform a self-test to check hardware build
	 */
	Status = XSpiPs_SelfTest(SpiInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	xil_printf("5\r\n");

	/*
	 * Connect the Spi device to the interrupt subsystem such that
	 * interrupts can occur. This function is application specific
	 */
	Status = SpiPsSetupIntrSystem(IntcInstancePtr, SpiInstancePtr,
				     SpiIntrId);
	if (Status != XST_SUCCESS) {
		xil_printf("FAILURE\r\n");
		return XST_FAILURE;
	}
	xil_printf("6\r\n");

	/*
	 * Setup the handler for the SPI that will be called from the
	 * interrupt context when an SPI status occurs, specify a pointer to
	 * the SPI driver instance as the callback reference so the handler is
	 * able to access the instance data
	 */
	XSpiPs_SetStatusHandler(SpiInstancePtr, SpiInstancePtr, (XSpiPs_StatusHandler) SpiPsHandler);
	xil_printf("7\r\n");

	XSpiPs_SetOptions(SpiInstancePtr, XSPIPS_MANUAL_START_OPTION | XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION  );
	XSpiPs_SetClkPrescaler(SpiInstancePtr, XSPIPS_CLK_PRESCALE_32);

	/*
	 * Assert the flash chip select
	 */
	XSpiPs_SetSlaveSelect(SpiInstancePtr, ChipSelect);
	xil_printf("11\r\n");

	/*
	 * Read the flash ID // REWRITE THIS
	 */
	Status = FlashReadID(SpiInstancePtr);

	if (Status != XST_SUCCESS) {
		xil_printf("SPI FLASH Interrupt Example Read ID Failed\r\n");
		return XST_FAILURE;
	}

	SpiPsDisableIntrSystem(IntcInstancePtr, SpiIntrId);
	return XST_SUCCESS;
}

/******************************************************************************
*
* This function is the handler which performs processing for the SPI driver.
* It is called from an interrupt context such that the amount of processing
* performed should be minimized.  It is called when a transfer of SPI data
* completes or an error occurs.
*
* This handler provides an example of how to handle SPI interrupts but is
* application specific.
*
* @param	CallBackRef is a reference passed to the handler.
* @param	StatusEvent is the status of the SPI .
* @param	ByteCount is the number of bytes transferred.
*
* @return	None
*
* @note		None.
*
******************************************************************************/
void SpiPsHandler(void *CallBackRef, u32 StatusEvent, unsigned int ByteCount)
{
	/*
	 * Indicate the transfer on the SPI bus is no longer in progress
	 * regardless of the status event
	 */
	TransferInProgress = FALSE;

	/*
	 * If the event was not transfer done, then track it as an error
	 */
	if (StatusEvent != XST_SPI_TRANSFER_DONE) {
		Error++;
	}
}

/******************************************************************************
*
* This function reads serial flash ID connected to the SPI interface.
*
* @param	None.
*
* @return
*		- XST_SUCCESS if successful
*		- XST_FAILURE if not successful
*
* @note		None.
*
******************************************************************************/
static int FlashReadID(XSpiPs *SpiInstance)
{
	u8 Index;
	u8 ByteCount = 4;
	u8 SendBuffer[8];
	u8 RecvBuffer[8];

	//SendBuffer[0] = READ_ID;
	SendBuffer[0] = 0x0A;
	SendBuffer[1] = 0;
	SendBuffer[2] = 0;
	SendBuffer[3] = 0;

	xil_printf("HER\r\n");

	TransferInProgress = TRUE;
	xil_printf("HER1\r\n");

	//XSpiPs_Transfer(SpiInstance, SendBuffer, RecvBuffer, (4 + ByteCount));
	XSpiPs_Transfer(SpiInstance, SendBuffer, RecvBuffer, (5));

	xil_printf("HER2\r\n");

	while (TransferInProgress);
	xil_printf("HER3\r\n");

	for(Index=0; Index < ByteCount; Index++) {
		xil_printf("ID : %0x\r\n", RecvBuffer[Index+1]);
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function setups the interrupt system for an Spi device.
*
* @param	IntcInstancePtr is a pointer to the instance of the Intc device.
* @param	SpiInstancePtr is a pointer to the instance of the Spi device.
* @param	SpiIntrId is the interrupt Id for an SPI device.
*
* @return
*		- XST_SUCCESS if successful
*		- XST_FAILURE if not successful
*
* @note		None.
*
******************************************************************************/
static int SpiPsSetupIntrSystem(XScuGic *IntcInstancePtr,
			       XSpiPs *SpiInstancePtr, u16 SpiIntrId)
{
	int Status;

	XScuGic_Config *IntcConfig; /* Instance of the interrupt controller */

	Xil_ExceptionInit();

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler)XScuGic_InterruptHandler,
				IntcInstancePtr);

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(IntcInstancePtr, SpiIntrId,
				(Xil_ExceptionHandler)XSpiPs_InterruptHandler,
				(void *)SpiInstancePtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	/*
	 * Enable the interrupt for the Spi device.
	 */
	XScuGic_Enable(IntcInstancePtr, SpiIntrId);

	/*
	 * Enable interrupts in the Processor.
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function disables the interrupts that occur for the Spi device.
*
* @param	IntcInstancePtr is the pointer to an INTC instance.
* @param	SpiIntrId is the interrupt Id for an SPI device.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void SpiPsDisableIntrSystem(XScuGic *IntcInstancePtr, u16 SpiIntrId)
{
	/*
	 * Disable the interrupt for the SPI device.
	 */
	XScuGic_Disable(IntcInstancePtr, SpiIntrId);

	/*
	 * Disconnect and disable the interrupt for the Spi device.
	 */
	XScuGic_Disconnect(IntcInstancePtr, SpiIntrId);
}
