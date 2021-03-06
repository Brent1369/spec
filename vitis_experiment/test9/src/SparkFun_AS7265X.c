/*
  This is a library written for the AMS AS7265x Spectral Triad (Moonlight)
  SparkFun sells these at its website: www.sparkfun.com
  Do you like this library? Help support SparkFun. Buy a board!
  https://www.sparkfun.com/products/15050

  Written by Nathan Seidle & Kevin Kuwata @ SparkFun Electronics, October 25th, 2018

  The Spectral Triad is a three sensor platform to do 18-channel spectroscopy.

  https://github.com/sparkfun/SparkFun_AS7265X_Arduino_Library

  Development environment specifics:
  Arduino IDE 1.8.5

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/




#include "xiic.h"
#include "SparkFun_AS7265X.h"
#include "sleep.h"
#include "xparameters.h"
#include "xiic.h"
#include "xil_exception.h"
#include "xil_printf.h"
 #include "xscugic.h"
XIic deviceInstance;



#ifdef XPAR_INTC_0_DEVICE_ID
 #define INTC_DEVICE_ID	XPAR_INTC_0_DEVICE_ID
 #define IIC_INTR_ID	XPAR_INTC_0_IIC_0_VEC_ID
 #define INTC			XIntc
 #define INTC_HANDLER	XIntc_InterruptHandler
#else
 #define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
 #define IIC_INTR_ID		XPAR_FABRIC_IIC_0_VEC_ID
 #define INTC			 	XScuGic
 #define INTC_HANDLER		XScuGic_InterruptHandler
#endif

INTC Intc;

#define PAGE_SIZE   16
typedef u8 AddressType;
u8 WriteBuffer[sizeof(AddressType) + PAGE_SIZE] = {0};
u8 ReadBuffer[PAGE_SIZE];	/* Read buffer for reading a page. */
volatile u8 TransmitComplete;	/* Flag to check completion of Transmission */
volatile u8 ReceiveComplete;	/* Flag to check completion of Reception */
#define EEPROM_TEST_START_ADDRESS   128

void delay(int ms){

	//sleep(10);
	usleep_A9(ms*1000);
}


static void SendHandler(XIic *InstancePtr)
{
	TransmitComplete = 0;
}
static void ReceiveHandler(XIic *InstancePtr)
{
	ReceiveComplete = 0;
}
static void StatusHandler(XIic *InstancePtr, int Event)
{
	printf("statushandler event = %d\n", Event);
	/*if(Event==4){
		while (XIic_IsIicBusy(&deviceInstance) == TRUE) {

		}
	}*/
}

static int SetupInterruptSystem(XIic *IicInstPtr)
{
	int Status;

#ifdef XPAR_INTC_0_DEVICE_ID

	/*
	 * Initialize the interrupt controller driver so that it's ready to use.
	 */
	Status = XIntc_Initialize(&Intc, INTC_DEVICE_ID);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XIntc_Connect(&Intc, IIC_INTR_ID,
				   (XInterruptHandler) XIic_InterruptHandler,
				   IicInstPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the interrupt controller so interrupts are enabled for all
	 * devices that cause interrupts.
	 */
	Status = XIntc_Start(&Intc, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable the interrupts for the IIC device.
	 */
	XIntc_Enable(&Intc, IIC_INTR_ID);

#else

	XScuGic_Config *IntcConfig;

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(&Intc, IntcConfig, IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XScuGic_SetPriorityTriggerType(&Intc, IIC_INTR_ID, 0x08, 0x3);

	/*
	 * Connect the interrupt handler that will be called when an
	 * interrupt occurs for the device.
	 */
	Status = XScuGic_Connect(&Intc, IIC_INTR_ID, (Xil_InterruptHandler)XIic_InterruptHandler, IicInstPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	/*
	 * Enable the interrupt for the IIC device.
	 */
	XScuGic_Enable(&Intc, IIC_INTR_ID);

#endif

	/*
	 * Initialize the exception table and register the interrupt
	 * controller handler with the exception table
	 */
	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 (Xil_ExceptionHandler)INTC_HANDLER, &Intc);

	/* Enable non-critical exceptions */
	Xil_ExceptionEnable();



	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function writes a buffer of data to the IIC serial EEPROM.
*
* @param	ByteCount contains the number of bytes in the buffer to be
*		written.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		The Byte count should not exceed the page size of the EEPROM as
*		noted by the constant PAGE_SIZE.
*
******************************************************************************/
int EepromWriteData(u16 ByteCount)
{
	int Status;

	/*
	 * Set the defaults.
	 */
	TransmitComplete = 1;
	//deviceInstance.Stats.TxErrors = 0;

	/*
	 * Start the IIC device.
	 */
	Status = XIic_Start(&deviceInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Send the Data.
	 */
	Status = XIic_MasterSend(&deviceInstance, WriteBuffer, ByteCount);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till the transmission is completed.
	 */
	while ((TransmitComplete) || (XIic_IsIicBusy(&deviceInstance) == TRUE)) {
		/*
		 * This condition is required to be checked in the case where we
		 * are writing two consecutive buffers of data to the EEPROM.
		 * The EEPROM takes about 2 milliseconds time to update the data
		 * internally after a STOP has been sent on the bus.
		 * A NACK will be generated in the case of a second write before
		 * the EEPROM updates the data internally resulting in a
		 * Transmission Error.
		 */
		//delay(50);
		if (deviceInstance.Stats.TxErrors != 0) {


			/*
			 * Enable the IIC device.
			 */
			Status = XIic_Start(&deviceInstance);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}


			if (!XIic_IsIicBusy(&deviceInstance)) {
				/*
				 * Send the Data.
				 */
				Status = XIic_MasterSend(&deviceInstance, WriteBuffer, ByteCount);
				if (Status == XST_SUCCESS) {
					deviceInstance.Stats.TxErrors = 0;
				}
				else {
				}
			}
		}
	}

	/*
	 * Stop the IIC device.
	 */
	Status = XIic_Stop(&deviceInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function reads data from the IIC serial EEPROM into a specified buffer.
*
* @param	BufferPtr contains the address of the data buffer to be filled.
* @param	ByteCount contains the number of bytes in the buffer to be read.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int EepromReadData(u8 *BufferPtr, u16 ByteCount, u8 adress)
{
	int Status;
	AddressType Address = adress;

	/*
	 * Set the Defaults.
	 */
	ReceiveComplete = 1;

	/*
	 * Position the Pointer in EEPROM.
	 */
	if (sizeof(Address) == 1) {
		WriteBuffer[0] = (u8) (adress);
	}
	else {
		WriteBuffer[0] = (u8) (adress >> 8);
		WriteBuffer[1] = (u8) (adress);
	}

	Status = EepromWriteData(sizeof(Address));
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the IIC device.
	 */
	Status = XIic_Start(&deviceInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Receive the Data.
	 */
	Status = XIic_MasterRecv(&deviceInstance, BufferPtr, ByteCount);
 	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till all the data is received.
	 */
	while ((ReceiveComplete) || (XIic_IsIicBusy(&deviceInstance) == TRUE)) {

	}

	/*
	 * Stop the IIC device.
	 */
	Status = XIic_Stop(&deviceInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}




u8 tekst[100] = {0};

//Initializes the sensor with basic settings
//Returns false if sensor is not detected
int begin()
{
	int test = 0;
	int Status=0;

    test = XIic_Initialize(&deviceInstance, 0);
	printf("\nInitialize = %d\n", test);
	deviceInstance.AddrOfSlave = 0x49;
	u8 recvbuffer[10] = {0};
	u8 sendbuffer[10] = {0};
	deviceInstance.RecvBufferPtr =recvbuffer;
	deviceInstance.SendBufferPtr =sendbuffer;

	//test = XIic_Start(&deviceInstance);
	//printf("Start = %d\n", test);
	delay(1);
	Status = SetupInterruptSystem(&deviceInstance);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}


	XIic_SetSendHandler(&deviceInstance, &deviceInstance,
				(XIic_Handler) SendHandler);
	XIic_SetRecvHandler(&deviceInstance, &deviceInstance,
				(XIic_Handler) ReceiveHandler);
	XIic_SetStatusHandler(&deviceInstance, &deviceInstance,
				  (XIic_StatusHandler) StatusHandler);

	delay(1);



  //Check to see if both slaves are detected
  //unsigned char buf[10] = {0};
  u8 value = virtualReadRegister(AS7265X_DEV_SELECT_CONTROL);
  //unsigned char value = virtualReadRegister(AS7265X_DEV_SELECT_CONTROL);
  if ((value & 0X30) == 0)
    return (0); //Test if Slave1 and 2 are detected. If not, bail.
  //printf("print die value: %d\n", value);
  //delay(10);
  setBulbCurrent(AS7265X_LED_CURRENT_LIMIT_12_5MA, AS7265x_LED_WHITE);
  setBulbCurrent(AS7265X_LED_CURRENT_LIMIT_12_5MA, AS7265x_LED_IR);
  setBulbCurrent(AS7265X_LED_CURRENT_LIMIT_12_5MA, AS7265x_LED_UV);

  disableBulb(AS7265x_LED_WHITE); //Turn off bulb to avoid heating sensor
  disableBulb(AS7265x_LED_IR);
  disableBulb(AS7265x_LED_UV);

  setIndicatorCurrent(AS7265X_INDICATOR_CURRENT_LIMIT_8MA); //Set to 8mA (maximum)
  enableIndicator();

  setIntegrationCycles(49); //50 * 2.8ms = 140ms. 0 to 255 is valid.
  //If you use Mode 2 or 3 (all the colors) then integration time is double. 140*2 = 280ms between readings.

  setGain(AS7265X_GAIN_64X); //Set gain to 64x

  setMeasurementMode(AS7265X_MEASUREMENT_MODE_6CHAN_ONE_SHOT); //One-shot reading of VBGYOR

  enableInterrupt();

  return (1); //We're all setup!
}


unsigned char getDeviceType()
{
  return (virtualReadRegister(AS7265X_HW_VERSION_HIGH));
}
unsigned char getHardwareVersion()
{
  return (virtualReadRegister(AS7265X_HW_VERSION_LOW));
}

unsigned char getMajorFirmwareVersion()
{
  virtualWriteRegister(AS7265X_FW_VERSION_HIGH, 0x01); //Set to 0x01 for Major
  virtualWriteRegister(AS7265X_FW_VERSION_LOW, 0x01);  //Set to 0x01 for Major

  return (virtualReadRegister(AS7265X_FW_VERSION_LOW));
}

unsigned char getPatchFirmwareVersion()
{
  virtualWriteRegister(AS7265X_FW_VERSION_HIGH, 0x02); //Set to 0x02 for Patch
  virtualWriteRegister(AS7265X_FW_VERSION_LOW, 0x02);  //Set to 0x02 for Patch

  return (virtualReadRegister(AS7265X_FW_VERSION_LOW));
}

unsigned char getBuildFirmwareVersion()
{
  virtualWriteRegister(AS7265X_FW_VERSION_HIGH, 0x03); //Set to 0x03 for Build
  virtualWriteRegister(AS7265X_FW_VERSION_LOW, 0x03);  //Set to 0x03 for Build

  return (virtualReadRegister(AS7265X_FW_VERSION_LOW));
}

//Returns true if I2C device ack's

/*
int isConnected()
{
  //Give IC 660ms for startup - max 1000ms
  for (unsigned char x = 0; x < 100; x++)
  {
    _i2cPort->beginTransmission((unsigned char)AS7265X_ADDR);
#ifdef ENERGIA
    _i2cPort->write(0x00); //See issue: https://github.com/sparkfun/SparkFun_AS7265x_Arduino_Library/issues/4
#endif
    if (_i2cPort->endTransmission() == 0)
      return (1); //Sensor ACK'd
    delay(10);



  }
  return (0); //Sensor did not ACK
}
*/
//Tells IC to take all channel measurements and polls for data ready flag
void takeMeasurements()
{
  setMeasurementMode(AS7265X_MEASUREMENT_MODE_6CHAN_ONE_SHOT); //Set mode to all 6-channels, one-shot

  //Wait for data to be ready
  while (dataAvailable() == 0)
    delay(AS7265X_POLLING_DELAY);

  //Readings can now be accessed via getCalibratedA(), getJ(), etc
}

//Turns on all bulbs, takes measurements of all channels, turns off all bulbs
void takeMeasurementsWithBulb()
{
  enableBulb(AS7265x_LED_WHITE);
  enableBulb(AS7265x_LED_IR);
  enableBulb(AS7265x_LED_UV);

  takeMeasurements();

  disableBulb(AS7265x_LED_WHITE); //Turn off bulb to avoid heating sensor
  disableBulb(AS7265x_LED_IR);
  disableBulb(AS7265x_LED_UV);
}

//Get the various color readings
unsigned short getG()
{
  return (getChannel(AS7265X_R_G_A, AS72652_VISIBLE));
}
unsigned short getH()
{
  return (getChannel(AS7265X_S_H_B, AS72652_VISIBLE));
}
unsigned short getI()
{
  return (getChannel(AS7265X_T_I_C, AS72652_VISIBLE));
}
unsigned short getJ()
{
  return (getChannel(AS7265X_U_J_D, AS72652_VISIBLE));
}
unsigned short getK()
{
  return (getChannel(AS7265X_V_K_E, AS72652_VISIBLE));
}
unsigned short getL()
{
  return (getChannel(AS7265X_W_L_F, AS72652_VISIBLE));
}

//Get the various NIR readings
unsigned short getR()
{
  return (getChannel(AS7265X_R_G_A, AS72651_NIR));
}
unsigned short getS()
{
  return (getChannel(AS7265X_S_H_B, AS72651_NIR));
}
unsigned short getT()
{
  return (getChannel(AS7265X_T_I_C, AS72651_NIR));
}
unsigned short getU()
{
  return (getChannel(AS7265X_U_J_D, AS72651_NIR));
}
unsigned short getV()
{
  return (getChannel(AS7265X_V_K_E, AS72651_NIR));
}
unsigned short getW()
{
  return (getChannel(AS7265X_W_L_F, AS72651_NIR));
}

//Get the various UV readings
unsigned short getA()
{
  return (getChannel(AS7265X_R_G_A, AS72653_UV));
}
unsigned short getB()
{
  return (getChannel(AS7265X_S_H_B, AS72653_UV));
}
unsigned short getC()
{
  return (getChannel(AS7265X_T_I_C, AS72653_UV));
}
unsigned short getD()
{
  return (getChannel(AS7265X_U_J_D, AS72653_UV));
}
unsigned short getE()
{
  return (getChannel(AS7265X_V_K_E, AS72653_UV));
}
unsigned short getF()
{
  return (getChannel(AS7265X_W_L_F, AS72653_UV));
}

//A the 16-bit value stored in a given channel registerReturns
unsigned short getChannel(unsigned char channelRegister, unsigned char device)
{
  selectDevice(device);
  unsigned short colorData = virtualReadRegister(channelRegister) << 8; //High unsigned char
  colorData |= virtualReadRegister(channelRegister + 1);          //Low unsigned char
  return (colorData);
}

//Returns the various calibration data
float getCalibratedA()
{


  return (getCalibratedValue(AS7265X_R_G_A_CAL, AS72653_UV));
}
float getCalibratedB()
{
  return (getCalibratedValue(AS7265X_S_H_B_CAL, AS72653_UV));
}
float getCalibratedC()
{
  return (getCalibratedValue(AS7265X_T_I_C_CAL, AS72653_UV));
}
float getCalibratedD()
{
  return (getCalibratedValue(AS7265X_U_J_D_CAL, AS72653_UV));
}
float getCalibratedE()
{
  return (getCalibratedValue(AS7265X_V_K_E_CAL, AS72653_UV));
}
float getCalibratedF()
{
  return (getCalibratedValue(AS7265X_W_L_F_CAL, AS72653_UV));
}

//Returns the various calibration data
float getCalibratedG()
{
  return (getCalibratedValue(AS7265X_R_G_A_CAL, AS72652_VISIBLE));
}
float getCalibratedH()
{
  return (getCalibratedValue(AS7265X_S_H_B_CAL, AS72652_VISIBLE));
}
float getCalibratedI()
{
  return (getCalibratedValue(AS7265X_T_I_C_CAL, AS72652_VISIBLE));
}
float getCalibratedJ()
{
  return (getCalibratedValue(AS7265X_U_J_D_CAL, AS72652_VISIBLE));
}
float getCalibratedK()
{
  return (getCalibratedValue(AS7265X_V_K_E_CAL, AS72652_VISIBLE));
}
float getCalibratedL()
{
  return (getCalibratedValue(AS7265X_W_L_F_CAL, AS72652_VISIBLE));
}

float getCalibratedR()
{
  return (getCalibratedValue(AS7265X_R_G_A_CAL, AS72651_NIR));
}
float getCalibratedS()
{
  return (getCalibratedValue(AS7265X_S_H_B_CAL, AS72651_NIR));
}
float getCalibratedT()
{
  return (getCalibratedValue(AS7265X_T_I_C_CAL, AS72651_NIR));
}
float getCalibratedU()
{
  return (getCalibratedValue(AS7265X_U_J_D_CAL, AS72651_NIR));
}
float getCalibratedV()
{
  return (getCalibratedValue(AS7265X_V_K_E_CAL, AS72651_NIR));
}
float getCalibratedW()
{
  return (getCalibratedValue(AS7265X_W_L_F_CAL, AS72651_NIR));
}

//Given an address, read four bytes and return the floating point calibrated value
float getCalibratedValue(unsigned char calAddress, unsigned char device)
{
  selectDevice(device);

  unsigned char b0, b1, b2, b3;
  b0 = virtualReadRegister(calAddress + 0);
  b1 = virtualReadRegister(calAddress + 1);
  b2 = virtualReadRegister(calAddress + 2);
  b3 = virtualReadRegister(calAddress + 3);

  //Channel calibrated values are stored big-endian
  unsigned int calBytes = 0;
  calBytes |= ((unsigned int)b0 << (8 * 3));
  calBytes |= ((unsigned int)b1 << (8 * 2));
  calBytes |= ((unsigned int)b2 << (8 * 1));
  calBytes |= ((unsigned int)b3 << (8 * 0));

  return (convertBytesToFloat(calBytes));
}

//Given 4 bytes returns the floating point value
float convertBytesToFloat(unsigned int myLong)
{
  float myFloat;
  memcpy(&myFloat, &myLong, 4); //Copy bytes into a float
  return (myFloat);
}

//Mode 0: 4 channels out of 6 (see datasheet)
//Mode 1: Different 4 channels out of 6 (see datasheet)
//Mode 2: All 6 channels continuously
//Mode 3: One-shot reading of all channels
void setMeasurementMode(unsigned char mode)
{
  if (mode > 0b11)
    mode = 0b11; //Error check

  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_CONFIG); //Read
  value &= 0b11110011;                                 //Clear BANK bits
  value |= (mode << 2);                                //Set BANK bits with user's choice
  virtualWriteRegister(AS7265X_CONFIG, value);         //Write
}

//Sets the gain value
//Gain 0: 1x (power-on default)
//Gain 1: 3.7x
//Gain 2: 16x
//Gain 3: 64x
void setGain(unsigned char gain)
{
  if (gain > 0b11)
    gain = 0b11;

  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_CONFIG); //Read
  value &= 0b11001111;                                 //Clear GAIN bits
  value |= (gain << 4);                                //Set GAIN bits with user's choice
  virtualWriteRegister(AS7265X_CONFIG, value);         //Write
}

//Sets the integration cycle amount
//Give this function a byte from 0 to 255.
//Time will be 2.8ms * [integration cycles + 1]
void setIntegrationCycles(unsigned char cycleValue)
{
  virtualWriteRegister(AS7265X_INTERGRATION_TIME, cycleValue); //Write
}

void enableInterrupt()
{
  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_CONFIG); //Read
  value |= (1 << 6);                                   //Set INT bit
  virtualWriteRegister(AS7265X_CONFIG, value);         //Write
}

//Disables the interrupt pin
void disableInterrupt()
{
  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_CONFIG); //Read
  value &= ~(1 << 6);                                  //Clear INT bit
  virtualWriteRegister(AS7265X_CONFIG, value);         //Write
}

//Checks to see if DRDY flag is set in the control setup register
int dataAvailable()
{
  unsigned char value = virtualReadRegister(AS7265X_CONFIG);
  return (value & (1 << 1)); //Bit 1 is DATA_RDY
}

//Enable the LED or bulb on a given device
void enableBulb(unsigned char device)
{
  selectDevice(device);

  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_LED_CONFIG);
  value |= (1 << 3); //Set the bit
  virtualWriteRegister(AS7265X_LED_CONFIG, value);
}

//Disable the LED or bulb on a given device
void disableBulb(unsigned char device)
{
  selectDevice(device);

  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_LED_CONFIG);
  value &= ~(1 << 3); //Clear the bit
  virtualWriteRegister(AS7265X_LED_CONFIG, value);
}

//Set the current limit of bulb/LED.
//Current 0: 12.5mA
//Current 1: 25mA
//Current 2: 50mA
//Current 3: 100mA
void setBulbCurrent(unsigned char current, unsigned char device)
{
  selectDevice(device);

  // set the current
  if (current > 0b11)
    current = 0b11;                                        //Limit to two bits
  unsigned char value = virtualReadRegister(AS7265X_LED_CONFIG); //Read
  value &= 0b11001111;                                     //Clear ICL_DRV bits
  value |= (current << 4);                                 //Set ICL_DRV bits with user's choice
  virtualWriteRegister(AS7265X_LED_CONFIG, value);         //Write
}

//As we read various registers we have to point at the master or first/second slave
void selectDevice(unsigned char device)
{
  //Set the bits 0:1. Just overwrite whatever is there because masking in the correct value doesn't work.
  virtualWriteRegister(AS7265X_DEV_SELECT_CONTROL, device);

  //This fails
  //unsigned char value = virtualReadRegister(AS7265X_DEV_SELECT_CONTROL);
  //value &= 0b11111100; //Clear lower two bits
  //if(device < 3) value |= device; //Set the bits
  //virtualWriteRegister(AS7265X_DEV_SELECT_CONTROL, value);
}

//Enable the onboard indicator LED
void enableIndicator()
{
  selectDevice(AS72651_NIR);

  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_LED_CONFIG);
  value |= (1 << 0); //Set the bit

  virtualWriteRegister(AS7265X_LED_CONFIG, value);
}

//Disable the onboard indicator LED
void disableIndicator()
{
  selectDevice(AS72651_NIR);

  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_LED_CONFIG);
  value &= ~(1 << 0); //Clear the bit

  virtualWriteRegister(AS7265X_LED_CONFIG, value);
}

//Set the current limit of onboard LED. Default is max 8mA = 0b11.
void setIndicatorCurrent(unsigned char current)
{
  selectDevice(AS72651_NIR);

  if (current > 0b11)
    current = 0b11;
  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_LED_CONFIG); //Read
  value &= 0b11111001;                                     //Clear ICL_IND bits
  value |= (current << 1);                                 //Set ICL_IND bits with user's choice

  virtualWriteRegister(AS7265X_LED_CONFIG, value); //Write
}

//Returns the temperature of a given device in C
unsigned char getTemperature(unsigned char deviceNumber)
{
  selectDevice(deviceNumber);
  return (virtualReadRegister(AS7265X_DEVICE_TEMP));
}

//Returns an average of all the sensor temps in C
float getTemperatureAverage()
{
  float average = 0;

  for (unsigned char x = 0; x < 3; x++)
    average += getTemperature(x);

  return (average / 3);
}

//Does a soft reset
//Give sensor at least 1000ms to reset
void softReset()
{
  //Read, mask/set, write
  unsigned char value = virtualReadRegister(AS7265X_CONFIG); //Read
  value |= (1 << 7);                                   //Set RST bit, automatically cleared after reset
  virtualWriteRegister(AS7265X_CONFIG, value);         //Write
}

//Read a virtual register from the AS7265x
unsigned char virtualReadRegister(unsigned char virtualAddr)
{
  u8 status=0;

  //Do a prelim check of the read register
  status = readRegister(AS7265X_STATUS_REG);
  usleep_A9(100);
  //printf("status1: %d\n", status);
  if ((status & AS7265X_RX_VALID) != 0) //There is data to be read
  {
	//printf("Read the byte but do nothing with it\n");
    readRegister(AS7265X_READ_REG); //Read the byte but do nothing with it
  }
  usleep_A9(100);;
  //Wait for WRITE flag to clear
  while (1)
  {
	//printf("111111111111111");
	status = readRegister(AS7265X_STATUS_REG);
	//printf("status2: %d\n", status);
    if ((status & AS7265X_TX_VALID) == 0){
        break; // If TX bit is clear, it is ok to write
    }
    usleep_A9(100);
  }

  usleep_A9(100);
  // Send the virtual register address (bit 7 should be 0 to indicate we are reading a register).
  status = writeRegister(AS7265X_WRITE_REG, virtualAddr);
  //printf("status2: %d\n", status);
  //delay(1);
  //Wait for READ flag to be set
  while (1)
  {

	 status = readRegister(AS7265X_STATUS_REG);
	 //printf("status3: %d\n", status);
    if ((status & AS7265X_RX_VALID) != 0){
    	break; // Read data is ready.
    }
    usleep_A9(100);

  }
  usleep_A9(100);

  int incoming = readRegister(AS7265X_READ_REG);
  //printf("incoming1: %d\n", incoming);
  usleep_A9(100);
  incoming = readRegister(AS7265X_READ_REG);
  usleep_A9(100);

  return (incoming);
}

//Write to a virtual register in the AS726x
void virtualWriteRegister(unsigned char virtualAddr, unsigned char dataToWrite)
{
  unsigned char status;

  //Wait for WRITE register to be empty
  while (1)
  {
    status = readRegister(AS7265X_STATUS_REG);
    if ((status & AS7265X_TX_VALID) == 0){
    	break; // No inbound TX pending at slave. Okay to write now.
    }
    delay(AS7265X_POLLING_DELAY);
  }
  delay(1);
  // Send the virtual register address (setting bit 7 to indicate we are writing to a register).
  writeRegister(AS7265X_WRITE_REG, (virtualAddr | 1 << 7));
  delay(1);
  //Wait for WRITE register to be empty
  while (1)
  {
    status = readRegister(AS7265X_STATUS_REG);
    if ((status & AS7265X_TX_VALID) == 0){
    	break; // No inbound TX pending at slave. Okay to write now.
    }
    delay(AS7265X_POLLING_DELAY);
  }
  delay(1);
  // Send the data to complete the operation.
  writeRegister(AS7265X_WRITE_REG, dataToWrite);
}

//Reads from a give location from the AS726x
unsigned char readRegister(unsigned char addr)
{
  int test = 0;
  TransmitComplete = 1;
  ReceiveComplete = 1;
  unsigned char ok[1] = {addr};

  XIic_Start(&deviceInstance);

  test = XIic_MasterSend(&deviceInstance, ok, 1);
  while ((TransmitComplete) || (XIic_IsIicBusy(&deviceInstance) == TRUE)) {

  }
  usleep_A9(100);
  //printf("(read)addr= %d \t masterSendReturn = %d\n",addr, test);
  //test = XIic_Stop(&deviceInstance);
  //printf("(read)addr= %d \t masterSendReturn = %d\n",addr, test);
  /*if (tekst[0]!=0)
  {
	 printf("No ack!\n");
     return (tekst[0]);
  }*/


 // test = XIic_Start(&deviceInstance);

  test = XIic_MasterRecv(&deviceInstance, tekst, 1);

  //delay(5);
 // while ((ReceiveComplete) || (XIic_IsIicBusy(&deviceInstance) == TRUE)) {
//	  delay(5);
 // }

  //printf("(read)addr= %d \t masterRecvReturn= %d \t masterRecv= %d\n",addr, test, tekst[0]);
  delay(1);


  XIic_Stop(&deviceInstance);

  return (tekst[0]);
}

//Write a value to a spot in the AS726x
int writeRegister(unsigned char addr, unsigned char val)
{
  int test = 0;
  TransmitComplete = 1;
  XIic_Start(&deviceInstance);
  unsigned char ok[2] = {addr, val};

  test = XIic_MasterSend(&deviceInstance, ok, 2);
  while ((TransmitComplete) || (XIic_IsIicBusy(&deviceInstance) == TRUE)) {

  }
  //printf("(read)addr= %d \t Value= %d \tmasterSendReturn = %d\n",addr, val, test);

  XIic_Stop(&deviceInstance);

  return (1);
}
