/*
*  Vivado HLS: funcion bubble
*  Enrique y Lucia 
*/
#include <stdio.h>

#define N 20

void bubble_sort(int array[N], int array_out[N]){
#pragma HLS INTERFACE s_axilite port=array_out
#pragma HLS INTERFACE s_axilite port=array
#pragma HLS INTERFACE s_axilite port=return

    
    // Fixed size array: 20
    int c;
    COPY:for(c=0;c<N;c++){
#pragma HLS UNROLL
        array_out[c] = array[c];
    }

    int temporal;
    int i,j;
    SORT:for(i=0;i<N-1;i++){
#pragma HLS LOOP_FLATTEN
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
