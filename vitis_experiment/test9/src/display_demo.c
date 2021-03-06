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

#define sinus_insteadOf_linear 1

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include <limits.h>

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

//#include <iostream>
//#include <vector>
//#include <cmath>
#include <string.h>

#include "ASCI.h"

#include <math.h>


char tekstBuf[100];

#define degToRad(angleInDegrees) ((angleInDegrees) * M_PI / 180.0)

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
float array[18] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
char arrayName[19] = {'A','B','C','D','E','F','G','H','R','I','S','J','T','U','V','W','K','L'};
int Colors[18][3] = {{0,0,255}, {0,0,255}, {0,0,255}, {0,0,255}, {0,0,255}, {0,0,255}, {255,0,0}, {255,0,0}, {0,255,0}, {255,0,0}, {0,255,0}, {255,0,0}, {0,255,0}, {0,255,0}, {0,255,0}, {0,255,0}, {255,0,0}, {255,0,0}};
void displayCharacter(u8 *frame, int asciNumber, int x, int y, int Red, int Green , int Blue);
void displayString(u8 *frame, char* stringToDisplay, int x, int y,int Red, int Green , int Blue);
void printtest(u8 *frame);
void copyArray(float arr[], float copy[], int size);
//void displayFloat(u8 *frame, float number, int x, int y);
void displayDotSmall(u8 *frame, int x, int y , int Red, int Green, int Blue);


double CosineInterpolate(
   double y1,double y2,
   double mu)
{
   double mu2;

   mu2 = (1-cos(mu*M_PI))/2;
   return(y1*(1-mu2)+y2*mu2);
}


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


	DemoPrintTest(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride);


	float value = 0;

	;
    	value = begin();
    	printf("BEGINvalue = %f\n\n", value);

    	disableIndicator();

    	//takeMeasurements();


   	 while(1){
   		takeMeasurementsWithBulb();
   		array[0] = getCalibratedA();
		printf(" A : CALIVALUE = %f\n", array[0]); //410nm
		array[1] = getCalibratedB();
		printf(" B : CALIVALUE = %f\n", array[1]); //435nm
		array[2] = getCalibratedC();
		printf(" C : CALIVALUE = %f\n", array[2]); //460nm
		array[3] = getCalibratedD();
		printf(" D : CALIVALUE = %f\n", array[3]); //485nm
		array[4] = getCalibratedE();
		printf(" E : CALIVALUE = %f\n", array[4]); //510nm
		array[5] = getCalibratedF();
		printf(" F : CALIVALUE = %f\n", array[5]); //535nm

		array[6] = getCalibratedG();
		printf(" G : CALIVALUE = %f\n", array[6]); //560nm
		array[7] = getCalibratedH();
		printf(" H : CALIVALUE = %f\n", array[7]); //585nm
		array[8] = getCalibratedR();
		printf(" R : CALIVALUE = %f\n", array[8]); //610nm
		array[9] = getCalibratedI();
		printf(" I : CALIVALUE = %f\n", array[9]); //645nm
		array[10] = getCalibratedS();
		printf(" S : CALIVALUE = %f\n", array[10]); //680nm
		array[11] = getCalibratedJ();
		printf(" J : CALIVALUE = %f\n", array[11]);//705nm

		array[12] = getCalibratedT();
		printf(" T : CALIVALUE = %f\n", array[12]); //730nm
		array[13] = getCalibratedU();
		printf(" U : CALIVALUE = %f\n", array[13]); //760nm
		array[14] = getCalibratedV();
		printf(" V : CALIVALUE = %f\n", array[14]); //810nm
		array[15] = getCalibratedW();
		printf(" W : CALIVALUE = %f\n", array[15]); //860nm
		array[16] = getCalibratedK();
		printf(" K : CALIVALUE = %f\n", array[16]); //900nm
		array[17] = getCalibratedL();
		printf(" L : CALIVALUE = %f\n", array[17]); //940nm
		printf("\n\nDONE\n\n");

		DemoPrintTest(dispCtrl.framePtr[dispCtrl.curFrame], dispCtrl.vMode.width, dispCtrl.vMode.height, dispCtrl.stride);
		//delay(100);
   	 }


	return 0;
}

/*
void FillSin( vector<double>& v )
{
static const double PI = 4*atan(1.0);
for( int n=0; n < output.size(); ++n )
{
v[ n ] = sin( 2*PI / n );
}
}
*/

void DemoPrintTest(u8 *frame, u32 width, u32 height, u32 stride)
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





	//displayCharacter(frame, 48, 100, 100);
	//displayCharacter(frame, 49, 500, 500);



	// print the sensor values on hdmi
	char SensorValuePrint[18][50];
	int y=0;

	for ( int i = 0; i < 18 ; i++)
	{

		snprintf(SensorValuePrint[i], sizeof(SensorValuePrint[i]), " %c=  ", arrayName[i]);

		displayString(frame , SensorValuePrint[i], 1650, 100 + y, Colors[i][0] , Colors[i][1], Colors[i][2]);

		snprintf(SensorValuePrint[i], sizeof(SensorValuePrint[i]), "%.2f", array[i]);

		displayString(frame , SensorValuePrint[i], 1650-16*(strlen(SensorValuePrint[i])-11), 100 + y, Colors[i][0] , Colors[i][1], Colors[i][2]);
		y= y+35;

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

						displayCharacter(frame, 73, 130 + (l + b), 830 - (i * 30),  0 , 0 ,0);


					}



		}


		displayString(frame, sensorRange[k], 130 + l, 870 ,  0 , 0 ,0);

		l = l+76;



	}
	// y graph
	for (int i = 0; i < 5 ; i++)
	{


		for (int k = 0; k < 47; k++)
				{

					displayCharacter(frame, 95,110 + (k*30) , 810 - (i * 150 ),  0 , 0 ,0);


				}




		displayString(frame, sensorY[i], 80 - (j*16), 810 - (i * 150 ),  0 , 0 ,0);
		j++;

	}

	// display values on graph

	int yhight = 210;
	int yhight2 = 210;
	for( int i = 0; i < 18; i++)
	{
		if(array[i] == 0){
			yhight = 820;
		}else{
		yhight = 820-(log10(array[i]) * (600/4)) ;
		}


		if(i != 17){
			if(array[i+1] == 0){
				yhight2 = 820;
			}else{
				yhight2= 820-(log10(array[i+1]) * (600/4)) ;
			}
		}

		//displayString(frame, array[i], 130 + l, 500 );

		int distanceBetweenPoints = 76;
		float test1;
		if(i != 17){
			for(int j = 0; j <distanceBetweenPoints; j++){
#ifdef	 sinus_insteadOf_linear
				test1 = CosineInterpolate(yhight, yhight2, (1.0/distanceBetweenPoints)*j);
#else
				test1 = yhight+(((float)yhight2-(float)yhight)*((float)j/76.0));
#endif
				displayDotSmall(frame, 149 + (i * 76)+j+7,test1+7,0x6a , 0x0d, 0xad);
			}
		}
		displayCharacter(frame, arrayName[i] , 165 + (i * 76), yhight - 20 , Colors[i][0] , Colors[i][1], Colors[i][2] );

		displayDot(frame, 149 + (i * 76),yhight,Colors[i][0] , Colors[i][1], Colors[i][2]);

	}

	printtest(frame);









	/*
	 * Flush the frame buffer memory range to ensure changes are written to the
	 * actual memory, and therefore accessible by the VDMA.
	 */
	Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
}


/*
void displayFloat(u8 *frame, float number, int x, int y){


	gcvt(number, 10, tekstBuf);

	displayString(frame , tekstBuf, x, y);


}
*/

void displayString(u8 *frame, char* stringToDisplay, int x, int y, int Red, int Green, int Blue){

	int stringLength = strlen(stringToDisplay);

	for(int i = 0; i < stringLength; i++){


		displayCharacter(frame, stringToDisplay[i], x + i*16, y,  Red,  Green, Blue);

	}


}

void displayCharacter(u8 *frame, int asciNumber, int x, int y, int Red, int Green, int Blue){

	for(int j = 0; j < 16; j++){

		for(int i = 0; i < 16; i++){

			if(asciTable[asciNumber][j][i] == 1){

				frame[(y+j) * 7680 + (i+x)*4    ] = Blue;
				frame[(y+j) * 7680 + (i+x)*4 + 1] = Green;
				frame[(y+j) * 7680 + (i+x)*4 + 2] = Red;

			}

		}

	}



}
void displayDot(u8 *frame, int x, int y , int Red, int Green, int Blue){

	for(int j = 0; j < 16; j++){

		for(int i = 0; i < 16; i++){



				frame[(y+j) * 7680 + (i+x)*4    ] = Blue;
				frame[(y+j) * 7680 + (i+x)*4 + 1] = Green;
				frame[(y+j) * 7680 + (i+x)*4 + 2] = Red;



		}

	}



}


void displayDotSmall(u8 *frame, int x, int y , int Red, int Green, int Blue){

	for(int j = 0; j < 4; j++){

		for(int i = 0; i < 4; i++){



				frame[(y+j) * 7680 + (i+x)*4    ] = Blue;
				frame[(y+j) * 7680 + (i+x)*4 + 1] = Green;
				frame[(y+j) * 7680 + (i+x)*4 + 2] = Red;



		}

	}



}



void printtest(u8 *frame)
{

		int n=18;
	    float temp=0.0;
	    float temparray[18]= {0};
	    char temp2 = '0';
	    char tempChararray[18]= {0};
	    copyArray(array, temparray, 18);
		strncpy(tempChararray, arrayName, 18);
	    for(int i=0;i<n;i++)
	    {
	        for(int j=0;j<n-i-1;j++)
	        {
	            if(temparray[j]<temparray[j+1])
	            {
	                temp=temparray[j+1];//swaping value
	                temparray[j+1]=temparray[j];
	                temparray[j]=temp;

	                temp2=tempChararray[j+1];//swaping value name
	                tempChararray[j+1]=tempChararray[j];
	                tempChararray[j]=temp2;


	            }
	        }
	    }

	    char HighestValues[18][50];
	    	int y=0;
	    	int charNumber;

	    	for ( int i = 0; i < 3 ; i++)
	    	{

	    		for(int j =0; j<16; j++){

	    			if(tempChararray[i]==arrayName[j]){

	    				charNumber=j;
	    				break;
	    			}
	    		}

	    		snprintf(HighestValues[i], sizeof(HighestValues[i]), " %c=  ", tempChararray[i]);

	    		displayString(frame , HighestValues[i], 700, 950 + y,  Colors[charNumber][0] , Colors[charNumber][1], Colors[charNumber][2]);



	    		snprintf(HighestValues[i], sizeof(HighestValues[i]), "%.2f",temparray[i]);

	    		displayString(frame , HighestValues[i], 700-16*(strlen(HighestValues[i])-11), 950 + y, Colors[charNumber][0] , Colors[charNumber][1], Colors[charNumber][2]);








	    		y= y+35;

	    	}
/*
	    //printing output of program
	    for(int i= 0; i< 18; i++)
	    {
	        printf("%f  ", temparray[i]);
	    }
	    printf("\n\n");
	    for(int i= 0; i< 18; i++)
		{
			printf("%c  ", tempChararray[i]);
		}
		printf("\n\n");
*/


}

void copyArray(float arr[], float copy[], int size)
{
  // loop to iterate through array
  for (int i = 0; i < size; ++i)
  {
    copy[i] = arr[i];
  }
}




