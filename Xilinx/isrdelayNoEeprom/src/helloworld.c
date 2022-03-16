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


#include "platform.h"
#include "SparkFun_AS7265X.h"
#include "xscutimer.h"




int main()
{
	int test = 0;
	unsigned char tekst[100] = {0};
	float value = 0;
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application1");




	//deviceInstance.AddrOfSlave = 0x49;
/*

    test = XIic_Initialize(&deviceInstance, 0);
	printf("\nInitialize = %d\n", test);
	test = XIic_Start(&deviceInstance);
	printf("Start = %d\n", test);

	test = XIic_MasterRecv(&deviceInstance, tekst, 100);

	printf("rec = %d\n", test);
	printf("gekregen tekst = %s\n", tekst);
*/

    	value = begin();
    	printf("BEGINvalue = %f\n\n", value);

    	disableIndicator();

    	//takeMeasurements();


   	 while(1){
   		takeMeasurementsWithBulb();
		value = getCalibratedA();
		printf("CALIVALUE = %f\n", value); //410nm
		value = getCalibratedB();
		printf("CALIVALUE = %f\n", value); //435nm
		value = getCalibratedC();
		printf("CALIVALUE = %f\n", value); //460nm
		value = getCalibratedD();
		printf("CALIVALUE = %f\n", value); //485nm
		value = getCalibratedE();
		printf("CALIVALUE = %f\n", value); //510nm
		value = getCalibratedF();
		printf("CALIVALUE = %f\n", value); //535nm

		value = getCalibratedG();
		printf("CALIVALUE = %f\n", value); //560nm
		value = getCalibratedH();
		printf("CALIVALUE = %f\n", value); //585nm
		value = getCalibratedR();
		printf("CALIVALUE = %f\n", value); //610nm
		value = getCalibratedI();
		printf("CALIVALUE = %f\n", value); //645nm
		value = getCalibratedS();
		printf("CALIVALUE = %f\n", value); //680nm
		value = getCalibratedJ();
		printf("CALIVALUE = %f\n", value);//705nm

		value = getCalibratedT();
		printf("CALIVALUE = %f\n", value); //730nm
		value = getCalibratedU();
		printf("CALIVALUE = %f\n", value); //760nm
		value = getCalibratedV();
		printf("CALIVALUE = %f\n", value); //810nm
		value = getCalibratedW();
		printf("CALIVALUE = %f\n", value); //860nm
		value = getCalibratedK();
		printf("CALIVALUE = %f\n", value); //900nm
		value = getCalibratedL();
		printf("CALIVALUE = %f\n", value); //940nm
		printf("\n\nDONE\n\n");
		delay(5000);
   	 }





	 cleanup_platform();



    return 0;

}



































