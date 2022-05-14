 // --------------------------------------------------------------------
// Copyright (c) 2019 by MicroPhase Technologies Inc.
// --------------------------------------------------------------------
//
// Permission:
//
//   MicroPhase grants permission to use and modify this code for use
//   in synthesis for all MicroPhase Development Boards.
//   Other use of this code, including the selling
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  MicroPhase provides no warranty regarding the use
//   or functionality of this code.
//
// --------------------------------------------------------------------
//
//                     MicroPhase Technologies Inc
//                     Shanghai, China
//
//                     web: http://www.microphase.cn/
//                     email: support@microphase.cn
//
// --------------------------------------------------------------------
// --------------------------------------------------------------------
//
// Major Functions:
//
// --------------------------------------------------------------------
// --------------------------------------------------------------------
//
//  Revision History:
//  Date          By            Revision    Change	 Description
//---------------------------------------------------------------------
//2020-02-22      Wang			1.0          		Original
//2020-                         1.1
// --------------------------------------------------------------------
// --------------------------------------------------------------------

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include <stdio.h>
#include <math.h>
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "display_demo.h"
#include "display_ctrl/display_ctrl.h"
#include "display_ctrl/vga_modes.h"
#include "SparkFun_AS7265X.h"

#include <string.h>

#include "ASCI.h"


char tekstBuf[100];


// Image data for each resolution
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//#include "pic_800_600.h"
//#include "pic_1280_720.h"
//#include "pic_1280_1024.h"
#include "pic_1920_1080.h"
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//XPAR_AXI_DYNCLK_0_BASEADDR
/*
 * XPAR redefines
 */
#define DYNCLK_BASEADDR     XPAR_DYNCLK_0_S_AXI_LITE_BASEADDR
#define VGA_VDMA_ID         XPAR_AXIVDMA_0_DEVICE_ID
#define DISP_VTC_ID         XPAR_VTC_0_DEVICE_ID

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

/*
 * Display Driver struct
 */
DisplayCtrl dispCtrl;
XAxiVdma vdma;


/*
 * Frame buffers for video data
 */
u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME];
u8 *pFrames[DISPLAY_NUM_FRAMES];  // array of pointers to the frame buffers

/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

void displayCharacter(u8 *frame, int asciNumber, int x, int y);
void displayString(u8 *frame, char* stringToDisplay, int x, int y);
void displayFloat(u8 *frame, float number, int x, int y);

int main(void)
{
	init_platform();
	int i;
	int Status;
	XAxiVdma_Config *vdmaConfig;

	/*
	 * Initialize an array of pointers to the 3 frame buffers
	 */
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pFrames[i] = frameBuf[i];
	}

	/*
	 * Initialize VDMA driver, get the hardware VDMA configurations
	 */
	vdmaConfig = XAxiVdma_LookupConfig(VGA_VDMA_ID);
	if (vdmaConfig == NULL)
	{
		xil_printf("No video DMA found for ID %d\r\n", VGA_VDMA_ID);
	}

	/*
	 * Use hardware VDMA configurations to initialize the driver
	 */
	Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("VDMA Configuration Initialization failed %d\r\n", Status);
	}

	/*
	 * Initialize the Display controller and start it
	 */

	// Video Mode for each resolution
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	//VideoMode VMODE = VMODE_800x600;
	//VideoMode VMODE = VMODE_1280x720;
	//VideoMode VMODE = VMODE_1280x1024;
	VideoMode VMODE = VMODE_1920x1080;
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

	Status = DisplayInitialize(&dispCtrl, &vdma, DISP_VTC_ID, DYNCLK_BASEADDR, pFrames, DEMO_STRIDE, VMODE);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Display Ctrl initialization failed during demo initialization%d\r\n", Status);
	}

	Status = DisplayStart(&dispCtrl);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Couldn't start display during demo initialization%d\r\n", Status);
	}
	float array[18] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	char arrayName[19] = {'A','B','C','D','E','F','G','H','R','I','S','J','T','U','V','W','K','L'};
	DemoPrintTest(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride,array, arrayName);


	float value = 0;

	;
    	value = begin();
    	printf("BEGINvalue = %f\n\n", value);

    	disableIndicator();

    	//takeMeasurements();


   	 while(1){
   		takeMeasurementsWithBulb();
   		array[0] = getCalibratedA();
		printf("CALIVALUE = %f\n", array[0]); //410nm
		array[1] = getCalibratedB();
		printf("CALIVALUE = %f\n", array[1]); //435nm
		array[2] = getCalibratedC();
		printf("CALIVALUE = %f\n", array[2]); //460nm
		array[3] = getCalibratedD();
		printf("CALIVALUE = %f\n", array[3]); //485nm
		array[4] = getCalibratedE();
		printf("CALIVALUE = %f\n", array[4]); //510nm
		array[5] = getCalibratedF();
		printf("CALIVALUE = %f\n", array[5]); //535nm

		array[6] = getCalibratedG();
		printf("CALIVALUE = %f\n", array[6]); //560nm
		array[7] = getCalibratedH();
		printf("CALIVALUE = %f\n", array[7]); //585nm
		array[8] = getCalibratedR();
		printf("CALIVALUE = %f\n", array[8]); //610nm
		array[9] = getCalibratedI();
		printf("CALIVALUE = %f\n", array[9]); //645nm
		array[10] = getCalibratedS();
		printf("CALIVALUE = %f\n", array[10]); //680nm
		array[11] = getCalibratedJ();
		printf("CALIVALUE = %f\n", array[11]);//705nm

		array[12] = getCalibratedT();
		printf("CALIVALUE = %f\n", array[12]); //730nm
		array[13] = getCalibratedU();
		printf("CALIVALUE = %f\n", array[13]); //760nm
		array[14] = getCalibratedV();
		printf("CALIVALUE = %f\n", array[14]); //810nm
		array[15] = getCalibratedW();
		printf("CALIVALUE = %f\n", array[15]); //860nm
		array[16] = getCalibratedK();
		printf("CALIVALUE = %f\n", array[16]); //900nm
		array[17] = getCalibratedL();
		printf("CALIVALUE = %f\n", array[17]); //940nm
		printf("\n\nDONE\n\n");

		DemoPrintTest(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride,array,arrayName);
		//delay(100);
   	 }


	return 0;
}

void DemoPrintTest(u8 *frame, u32 width, u32 height, u32 stride, float *array , char * arrayName)
{
	u32 xcoi, ycoi;
	u32 linesStart = 0;
	u32 pixelIdx = 0;

	for(ycoi = 0; ycoi < height; ycoi++)
	{
		for(xcoi = 0; xcoi < (width * 4); xcoi+=4)
		{




			// create graph
			if(((xcoi >= 400 && xcoi <= 480) && (ycoi >= 200 && ycoi <= 860 )) || ((ycoi >= 840 && ycoi <= 860 ) && (xcoi >= 400 && xcoi <= 6080))){


					frame[linesStart + xcoi    ] = 0;
					frame[linesStart + xcoi + 1] = 0;
					frame[linesStart + xcoi + 2] = 0;
					pixelIdx +=3;



			}
			else{

				// 1920 x 1080
				//frame[linesStart + xcoi    ] = Pixel_1920_1080[pixelIdx++];
				//frame[linesStart + xcoi + 1] = Pixel_1920_1080[pixelIdx++];
				//frame[linesStart + xcoi + 2] = Pixel_1920_1080[pixelIdx++];
				frame[linesStart + xcoi    ] = 255;
				frame[linesStart + xcoi + 1] = 255;
				frame[linesStart + xcoi + 2] = 255;
			}
			//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		}

		linesStart += stride;
	}



	//displayFloat(frame, array[1], 800, 800);

	//displayCharacter(frame, 48, 100, 100);
	//displayCharacter(frame, 49, 500, 500);



	// print the sensor values on hdmi
	char SensorValuePrint[18][50];
	int y;
	int ascichar = 65;
	for ( int i = 0; i < 18 ; i++)
	{
		snprintf(SensorValuePrint[i], sizeof(SensorValuePrint[i]), " %c=  %f", arrayName[i] , array[i]);
		displayString(frame , SensorValuePrint[i], 1650, 100 + y);
		y= y+35;
		ascichar++;
	}

	//display sensor range under graph
	char * sensorRange[19]= {"410","435","460","485","510","535","560","585","610","645","680","705","730","760","810","860","900","940", "Wavelength (nm)"};
	char * sensorY[5] = {"1","10","100","1000", "10000"};
	int l = 0;
	int b = 18;
	int j = 0;
	for ( int k = 0; k < 19 ; k++)
	{

		if ( k != 18)
		{
			for (int i = 0; i < 22; i++)
					{

						displayCharacter(frame, 73, 130 + (l + b), 830 - (i * 30));


					}



		}


		displayString(frame, sensorRange[k], 130 + l, 870 );

		l = l+76;



	}
	// y graph
	for (int i = 0; i < 5 ; i++)
	{


		for (int k = 0; k < 47; k++)
				{

					displayCharacter(frame, 95,110 + (k*30) , 810 - (i * 150 ));


				}




		displayString(frame, sensorY[i], 80 - (j*16), 810 - (i * 145 ));
		j++;

	}

	// display values on graph
	int xhight = 0;
	int yhight = 500;
	for( int i = 0; i < 18; i++)
	{
		//displayString(frame, array[i], 130 + l, 500 );
		displayDot(frame, 149 + (i * 76),yhight);
		displayCharacter(frame, arrayName[i] , 165 + (i * 76), yhight - 20 );



	}



	/*
	 * Flush the frame buffer memory range to ensure changes are written to the
	 * actual memory, and therefore accessible by the VDMA.
	 */
	Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}



void displayFloat(u8 *frame, float number, int x, int y){


	gcvt(number, 10, tekstBuf);

	displayString(frame , tekstBuf, x, y);


}


void displayString(u8 *frame, char* stringToDisplay, int x, int y){

	int stringLength = strlen(stringToDisplay);

	for(int i = 0; i < stringLength; i++){


		displayCharacter(frame, stringToDisplay[i], x + i*16, y);

	}


}

void displayCharacter(u8 *frame, int asciNumber, int x, int y){

	for(int j = 0; j < 16; j++){

		for(int i = 0; i < 16; i++){

			if(asciTable[asciNumber][j][i] == 1){

				frame[(y+j) * 7680 + (i+x)*4    ] = 0;
				frame[(y+j) * 7680 + (i+x)*4 + 1] = 0;
				frame[(y+j) * 7680 + (i+x)*4 + 2] = 0;

			}

		}

	}



}
void displayDot(u8 *frame, int x, int y){

	for(int j = 0; j < 16; j++){

		for(int i = 0; i < 16; i++){



				frame[(y+j) * 7680 + (i+x)*4    ] = 0;
				frame[(y+j) * 7680 + (i+x)*4 + 1] = 0;
				frame[(y+j) * 7680 + (i+x)*4 + 2] = 0;



		}

	}



}




