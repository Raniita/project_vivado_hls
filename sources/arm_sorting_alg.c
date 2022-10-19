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

// UART at 115200 bauds

#include <stdio.h>
#include "platform.h"
//#include "xil_printf.h"
#include "xtime_l.h"

#include "xparameters.h"    //This includes basic system definitions

#include "xbubble_sort.h"    //Include device driver's functions
#include "xinsertion_sort.h"
#include "xheap_sort.h"

#define N 20


// ##############################################################
// ####################### Bubble Sort SW #######################
// ##############################################################

void bubble_sort_sw(int array[N], int array_out[N]){
    // n == 20
    int c;
    for(c=0;c<N;c++){
        array_out[c] = array[c];
        //printf("%d", array_out[c]);
		//printf(", ");
    }

    int temporal;
    int i,j;
    for(i=0;i<N-1;i++){
        for(j=0;j<N-1-i;j++){
            if(array_out[j] > array_out[j+1]){
                temporal = array_out[j];
                array_out[j] = array_out[j+1];
                array_out[j+1] = temporal;
            }
        }
    }

    return;
}


// #################################################################
// ####################### Insertion Sort SW #######################
// #################################################################

void insertion_sort_sw(int array[N], int array_out[N]){
    int c;
    for(c=0;c<N;c++){
        array_out[c] = array[c];
    }
    
    int i,j;
	int element;
	for(i=1;i<N;i++){
		element = array_out[i];
		j = i-1;
		while(j >= 0 && array_out[j] > element){
			array_out[j+1] = array_out[j];
			j = j-1;
		}
		array_out[j+1] = element;
	}

    return;
}


// ############################################################
// ####################### Heap Sort SW #######################
// ############################################################

void swap(int &x, int &y){
/* Helper function: swap two vars */
    int tmp = x;
    x = y;
    y = tmp;
}

// function build Max Heap where value
// of each child is always smaller
// than value of their parent
void buildMaxHeap(int array[N]){
	for (int i = 1; i < N; i++){
		// if child is bigger than parent
		if (array[i] > array[(i - 1) / 2]){
			int j = i;
	
			// swap child and parent until
			// parent is smaller
			while (array[j] > array[(j - 1) / 2]){
				swap(array[j], array[(j - 1) / 2]);
				j = (j - 1) / 2;
			}
		}
	}
}

void heap_sort_sw(int array[N], int array_out[N]){
	
	int c;
    for(c=0;c<N;c++){
        array_out[c] = array[c];
        //printf("%d", array_out[c]);
		//printf(", ");
    }

	buildMaxHeap(array_out);

	for (int i = N - 1; i > 0; i--){
		// swap value of first indexed
		// with last indexed
		swap(array_out[0], array_out[i]);
	
		// maintaining heap property
		// after each swapping
		int j = 0;
		int index;
		
		do {
			index = (2 * j + 1);
			
			// if left child is smaller than
			// right child point index variable
			// to right child
			if (array_out[index] < array_out[index + 1] && index < (i - 1)){
			    index++;
			}
				
			// if parent is smaller than child
			// then swapping parent with child
			// having higher value
			if (array_out[j] < array_out[index] && index < i){
			    swap(array_out[j], array_out[index]);
			}
				
			j = index;
		
		} while (index < i);
	}
	
	return;
}


// #################################################################
// ####################### Helpers Functions #######################
// #################################################################
void print_array(int array[N]){
	printf("Array1: ");
    int i;
    for(i=0;i<N;i++){
    	printf("%d,", array[i]);
    }
    print("\n\r")
    return;
}

void print_array_sw_hw(int array_sw[N], int array_hw[N]){
	printf("\n\rOutput: \r\r");
    printf("----------------------------------\r\n");
    printf("Printing arrays: array_sw | array_hw \r\n");
    for(i=0;i<N;i++){
        printf("[%d]  SW: %d | HW: %d \r\n", i, array_sw[i], array_hw[i]);
    }

	return;
}


// #######################################################################
// ####################### Setup Devices Functions #######################
// #######################################################################
void setup_bubble_device(){
	printf("Look up for device config: \n\r");
    bubble_config_ptr = XBubble_sort_LookupConfig(XPAR_BUBBLE_SORT_0_DEVICE_ID);
    if(!bubble_config_ptr){
       printf("Error: no se ha encontrado la configuracion. Exit\n\r");
       return XST_FAILURE;
    }
    printf(">>>>>> Device configured. \n\r\n\r");

    printf("Configuration init: \n\r");
    status = XBubble_sort_CfgInitialize(&bubble_sort_ptr, bubble_config_ptr);
    if(status != XST_SUCCESS){
        printf("Error: no se ha podido inicializar la config. Exit\n\r");
        exit(-1);
    }
    printf(">>>>>> Device initialized. \n\r\n\r");

    printf("Send array1 to device: \n\r");
    status = XBubble_sort_Write_array_r_Words(&bubble_sort_ptr, 0x00, array1, N);
    if(status != N){
        printf("Error: no se ha podido enviar array1 al hw. Exit\n\r");
        exit(-1);
    }
    printf(">>>>>> array1 sent to device. \n\r");

    printf("Check array1 on device: \n\r");
    printf(">>> array1 = ");
    status = XBubble_sort_Read_array_r_Words(&bubble_sort_ptr, 0x00, array1_read, N);
    if(status != N){
        printf("Error: no se ha podido leer array1 del device. \n\r");
        exit(-1);
    }
    // Print array1_read
    print_array(array1_read);

	return;
}


void setup_insertion_device(){
	printf("Look up for device config: \n\r");
    insertion_config_ptr = XInsertion_sort_LookupConfig(XPAR_INSERTION_SORT_0_DEVICE_ID);
    if(!insertion_config_ptr){
       printf("Error: no se ha encontrado la configuracion. Exit\n\r");
       return XST_FAILURE;
    }
    printf(">>>>>> Device configured. \n\r\n\r");

    printf("Configuration init: \n\r");
    status = XInsertion_sort_CfgInitialize(&insertion_sort_ptr, insertion_config_ptr);
    if(status != XST_SUCCESS){
        printf("Error: no se ha podido inicializar la config. Exit\n\r");
        exit(-1);
    }
    printf(">>>>>> Device initialized. \n\r\n\r");

    printf("Send array1 to device: \n\r");
    status = XInsertion_sort_Write_array_r_Words(&insertion_sort_ptr, 0x00, array1, N);
    if(status != N){
        printf("Error: no se ha podido enviar array1 al hw. Exit\n\r");
        exit(-1);
    }
    printf(">>>>>> array1 sent to device. \n\r");

    printf("Check array1 on device: \n\r");
    printf(">>> array1 = ");
    status = XInsertion_sort_Read_array_r_Words(&insertion_sort_ptr, 0x00, array1_read, N);
    if(status != N){
        printf("Error: no se ha podido leer array1 del device. \n\r");
        exit(-1);
    }
    // Print array1_read
    print_array(array1_read);

	return;
}


void setup_heap_device(){
	printf("Look up for device config: \n\r");
    heap_config_ptr = XHeap_sort_LookupConfig(XPAR_HEAP_SORT_0_DEVICE_ID);
    if(!heap_config_ptr){
       printf("Error: no se ha encontrado la configuracion. Exit\n\r");
       return XST_FAILURE;
    }
    printf(">>>>>> Device configured. \n\r\n\r");

    printf("Configuration init: \n\r");
    status = XHeap_sort_CfgInitialize(&heap_sort_ptr, heap_config_ptr);
    if(status != XST_SUCCESS){
        printf("Error: no se ha podido inicializar la config. Exit\n\r");
        exit(-1);
    }
    printf(">>>>>> Device initialized. \n\r\n\r");

    printf("Send array1 to device: \n\r");
    status = XHeap_sort_Write_array_r_Words(&heap_sort_ptr, 0x00, array1, N);
    if(status != N){
        printf("Error: no se ha podido enviar array1 al hw. Exit\n\r");
        exit(-1);
    }
    printf(">>>>>> array1 sent to device. \n\r");

    printf("Check array1 on device: \n\r");
    printf(">>> array1 = ");
    status = XHeap_sort_Read_array_r_Words(&heap_sort_ptr, 0x00, array1_read, N);
    if(status != N){
        printf("Error: no se ha podido leer array1 del device. \n\r");
        exit(-1);
    }
    // Print array1_read
    print_array(array1_read);

	return;
}


// ##############################################################
// ####################### Main Execution #######################
// ##############################################################
int main(){
	// Arrays datains
	int array1[N] = {13, 20, 44, 123, 66, 45, 76, 44, 33, 2,
	                     7, 10, 88, 56, 90, 33, 30, 22, 60, 45};
	
	int array1_out_sw[N];
	int array1_out_hw[N];
	int array1_read[N];

	XTime tStart_sw, tEnd_sw, tStart_hw, tEnd_hw;
	
	int status;

	// Declare Devices vars
	XBubble_sort_Config *bubble_config_ptr;      		// Puntero config Bubble
	XBubble_sort bubble_sort_ptr;                		// Puntero device Bubble
	
	XInsertion_sort_Config *insertion_config_ptr;      	// Puntero config Insertion
	XInsertion_sort insertion_sort_ptr;                	// Puntero device Insertion
	
	XHeap_sort_Config *heap_config_ptr;      			// Puntero config Heap
	XHeap_sort heap_sort_ptr;                			// Puntero device Heap
	
    init_platform();

    printf("\e[1;1H\e[2J");                     		//clean screen
    
    printf("********************************************************************\n\r");
    printf("   Sorting Algorithms -- Enrique y Lucia -- Curso 2021/2022  \n\r");
    printf("   Executing: bubble sort, insertion sort and heap sort  \n\r");
    printf("********************************************************************\n\r");

	// BUBBLE SORT EXECUTION
	printf("=========> Bubble sort (1/3)")
    // Output device sw
    XTime_GetTime(&tStart_sw);
    bubble_sort_sw(array1, array1_out_sw);
    XTime_GetTime(&tEnd_sw);
    
    setup_bubble_device();

    // START
    printf(">>>>>> Starting bubble sort algorithm \n\r");
    XTime_GetTime(&tStart_hw);
    XBubble_sort_Start(&bubble_sort_ptr);

    // Polling for finish
    // Must wait until ap_vld=1
    int j = 0;
    while(1){
        if(XBubble_sort_IsDone(&bubble_sort_ptr)) break;
        else{
            j++;
            continue;
        }
    }
    XTime_GetTime(&tEnd_hw);

    printf("Read array1_out from device: \n\r");
    printf(">>> array1_out[] = ");
    status = XBubble_sort_Read_array_out_Words(&bubble_sort_ptr, 0x00, array1_out_hw, N);
    if(status != N){
        print("Error: no se ha podido leer array1_out. Exit\n\r");
        exit(-1);
    }
    // Print array1_out
    print_array(array1_out_hw);

    // Compare results
    print_array(array1);
    print_array_sw_hw(array1_out_sw, array1_out_hw);

    printf("Loops: %d \n\r", j);
    printf("Time SW: %.2f us \n\r", 1.0 * (tEnd_sw - tStart_sw)/(COUNTS_PER_SECOND/1000000));
    printf("Time HW: %.2f us \n\r\n\r", 1.0 * (tEnd_hw - tStart_hw)/(COUNTS_PER_SECOND/1000000));
    
    // INSERTION SORT
    printf("=========> Insertion sort (2/3)");
    // Execute software version
    XTime_GetTime(&tStart_sw);
    insertion_sort_sw(array1, array1_out_sw);
    XTime_GetTime(&tEnd_sw);
    
    setup_insertion_device();
    
    // START
    printf(">>>>>> Starting insertion sort algorithm. \n\r");
    XTime_GetTime(&tStart_hw);
    XInsertion_sort_Start(&insertion_sort_ptr);
    
    // Polling for finish
    // Must wait until ap_vld=1
    int j = 0;
    while(1){
        if(XInsertion_sort_IsDone(&insertion_sort_ptr)) break;
        else{
            j++;
            continue;
        }
    }
    XTime_GetTime(&tEnd_hw);
    
    printf("Read array1_out from device: \n\r");
    printf(">>> array1_out[] = ");
    status = XInsertion_sort_Read_array_out_Words(&insertion_sort_ptr, 0x00, array1_out_hw, N);
    if(status != N){
        print("Error: no se ha podido leer array1_out. Exit\n\r");
        exit(-1);
    }
    // Print array1_out
    print_array(array1_out_hw);

    // Compare results
    print_array(array1);
    print_array_sw_hw(array1_out_sw, array1_out_hw);

    printf("Loops: %d \n\r", j);
    printf("Time SW: %.2f us \n\r", 1.0 * (tEnd_sw - tStart_sw)/(COUNTS_PER_SECOND/1000000));
    printf("Time HW: %.2f us \n\r\n\r", 1.0 * (tEnd_hw - tStart_hw)/(COUNTS_PER_SECOND/1000000));
    
    // HEAP SORT
    printf("=========> Heap sort (3/3)");
    
    // Execute software version
    XTime_GetTime(&tStart_sw);
    heap_sort_sw(array1, array1_out_sw);
    XTime_GetTime(&tEnd_sw);
    
    setup_heap_device();
    
    // START
    printf(">>>>>> Starting heap sort algorithm. \n\r");
    XTime_GetTime(&tStart_hw);
    XHeap_sort_Start(&heap_sort_ptr);
    
    // Polling for finish
    // Must wait until ap_vld=1
    int j = 0;
    while(1){
        if(XHeap_sort_IsDone(&heap_sort_ptr)) break;
        else{
            j++;
            continue;
        }
    }
    XTime_GetTime(&tEnd_hw);
    
    printf("Read array1_out from device: \n\r");
    printf(">>> array1_out[] = ");
    status = XHeap_sort_Read_array_out_Words(&heap_sort_ptr, 0x00, array1_out_hw, N);
    if(status != N){
        print("Error: no se ha podido leer array1_out. Exit\n\r");
        exit(-1);
    }
    // Print array1_out
    print_array(array1_out_hw);

    // Compare results
    print_array(array1);
    print_array_sw_hw(array1_out_sw, array1_out_hw);

    printf("Loops: %d \n\r", j);
    printf("Time SW: %.2f us \n\r", 1.0 * (tEnd_sw - tStart_sw)/(COUNTS_PER_SECOND/1000000));
    printf("Time HW: %.2f us \n\r\n\r", 1.0 * (tEnd_hw - tStart_hw)/(COUNTS_PER_SECOND/1000000));

    cleanup_platform();
    
    return 0;
}
