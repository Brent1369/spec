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

#ifndef _SPARKFUN_AS7265X_H
#define _SPARKFUN_AS7265X_H



#include "stdlib.h"
#include <stdio.h>
#include "xil_printf.h"
#include "xiic.h"
#include "xiic_l.h"
#include "xiic_i.h"




#define AS7265X_ADDR 0x49 //7-bit unshifted default I2C Address

#define AS7265X_STATUS_REG 0x00
#define AS7265X_WRITE_REG 0X01
#define AS7265X_READ_REG 0x02

#define AS7265X_TX_VALID 0x02
#define AS7265X_RX_VALID 0x01

//Register addresses
#define AS7265X_HW_VERSION_HIGH 0x00
#define AS7265X_HW_VERSION_LOW 0x01

#define AS7265X_FW_VERSION_HIGH 0x02
#define AS7265X_FW_VERSION_LOW 0x03

#define AS7265X_CONFIG 0x04
#define AS7265X_INTERGRATION_TIME 0x05
#define AS7265X_DEVICE_TEMP 0x06
#define AS7265X_LED_CONFIG 0x07

//Raw channel registers
#define AS7265X_R_G_A 0x08
#define AS7265X_S_H_B 0x0A
#define AS7265X_T_I_C 0x0C
#define AS7265X_U_J_D 0x0E
#define AS7265X_V_K_E 0x10
#define AS7265X_W_L_F 0x12

//Calibrated channel registers
#define AS7265X_R_G_A_CAL 0x14
#define AS7265X_S_H_B_CAL 0x18
#define AS7265X_T_I_C_CAL 0x1C
#define AS7265X_U_J_D_CAL 0x20
#define AS7265X_V_K_E_CAL 0x24
#define AS7265X_W_L_F_CAL 0x28

#define AS7265X_DEV_SELECT_CONTROL 0x4F

#define AS7265X_COEF_DATA_0 0x50
#define AS7265X_COEF_DATA_1 0x51
#define AS7265X_COEF_DATA_2 0x52
#define AS7265X_COEF_DATA_3 0x53
#define AS7265X_COEF_DATA_READ 0x54
#define AS7265X_COEF_DATA_WRITE 0x55

//Settings

#define AS7265X_POLLING_DELAY 5 //Amount of ms to wait between checking for virtual register changes

#define AS72651_NIR 0x00
#define AS72652_VISIBLE 0x01
#define AS72653_UV 0x02

#define AS7265x_LED_WHITE 0x00 //White LED is connected to x51
#define AS7265x_LED_IR 0x01    //IR LED is connected to x52
#define AS7265x_LED_UV 0x02    //UV LED is connected to x53

#define AS7265X_LED_CURRENT_LIMIT_12_5MA 0b00
#define AS7265X_LED_CURRENT_LIMIT_25MA 0b01
#define AS7265X_LED_CURRENT_LIMIT_50MA 0b10
#define AS7265X_LED_CURRENT_LIMIT_100MA 0b11

#define AS7265X_INDICATOR_CURRENT_LIMIT_1MA 0b00
#define AS7265X_INDICATOR_CURRENT_LIMIT_2MA 0b01
#define AS7265X_INDICATOR_CURRENT_LIMIT_4MA 0b10
#define AS7265X_INDICATOR_CURRENT_LIMIT_8MA 0b11

#define AS7265X_GAIN_1X 0b00
#define AS7265X_GAIN_37X 0b01
#define AS7265X_GAIN_16X 0b10
#define AS7265X_GAIN_64X 0b11

#define AS7265X_MEASUREMENT_MODE_4CHAN 0b00
#define AS7265X_MEASUREMENT_MODE_4CHAN_2 0b01
#define AS7265X_MEASUREMENT_MODE_6CHAN_CONTINUOUS 0b10
#define AS7265X_MEASUREMENT_MODE_6CHAN_ONE_SHOT 0b11


  //AS7265X();
  void delay(int ms);
  int begin();
  int isConnected(); //Checks if sensor ack's the I2C request
  //int EepromWriteData(u16 ByteCount);
  //int EepromReadData(u8 *BufferPtr, u16 ByteCount);
  unsigned char getDeviceType();
  unsigned char getHardwareVersion();
  unsigned char getMajorFirmwareVersion();
  unsigned char getPatchFirmwareVersion();
  unsigned char getBuildFirmwareVersion();

  unsigned char getTemperature(unsigned char deviceNumber); //Get temp in C of the master IC
  float getTemperatureAverage();                    //Get average of all three ICs

  void takeMeasurements();
  void takeMeasurementsWithBulb();

  void enableIndicator(); //Blue status LED
  void disableIndicator();

  void enableBulb(unsigned char device);
  void disableBulb(unsigned char device);

  void setGain(unsigned char gain);            //1 to 64x
  void setMeasurementMode(unsigned char mode); //4 channel, other 4 channel, 6 chan, or 6 chan one shot
  void setIntegrationCycles(unsigned char cycleValue);

  void setBulbCurrent(unsigned char current, unsigned char device); //
  void setIndicatorCurrent(unsigned char current);            //0 to 8mA

  void enableInterrupt();
  void disableInterrupt();

  void softReset();

  int dataAvailable(); //Returns true when data is available

  //Returns the various calibration data
  float getCalibratedA();
  float getCalibratedB();
  float getCalibratedC();
  float getCalibratedD();
  float getCalibratedE();
  float getCalibratedF();

  float getCalibratedG();
  float getCalibratedH();
  float getCalibratedI();
  float getCalibratedJ();
  float getCalibratedK();
  float getCalibratedL();

  float getCalibratedR();
  float getCalibratedS();
  float getCalibratedT();
  float getCalibratedU();
  float getCalibratedV();
  float getCalibratedW();

  //Get the various raw readings
  unsigned short getA();
  unsigned short getB();
  unsigned short getC();
  unsigned short getD();
  unsigned short getE();
  unsigned short getF();

  unsigned short getG();
  unsigned short getH();
  unsigned short getI();
  unsigned short getJ();
  unsigned short getK();
  unsigned short getL();

  unsigned short getR();
  unsigned short getS();
  unsigned short getT();
  unsigned short getU();
  unsigned short getV();
  unsigned short getW();

  //TwoWire *_i2cPort;
  unsigned short getChannel(unsigned char channelRegister, unsigned char device);
  float getCalibratedValue(unsigned char calAddress, unsigned char device);
  float convertBytesToFloat(unsigned int myLong);

  void selectDevice(unsigned char device); //Change between the x51, x52, or x53 for data and settings

  unsigned char virtualReadRegister(unsigned char virtualAddr);
  void virtualWriteRegister(unsigned char virtualAddr, unsigned char dataToWrite);

  unsigned char readRegister(unsigned char addr);
  int writeRegister(unsigned char addr, unsigned char val);


#endif
