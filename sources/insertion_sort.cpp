/*
*   Vivado HLS: funcion insertion
*   Enrique y Lucia
*/
#include <stdio.h>

#define N 40

void insertion_sort(int array[N], int array_out[N]){
#pragma HLS INTERFACE s_axilite port=array_out
#pragma HLS INTERFACE s_axilite port=array
#pragma HLS INTERFACE s_axilite port=return

    int c;
    COPY:for(c=0;c<N;c++){
#pragma HLS UNROLL
        array_out[c] = array[c];
    }
    
    int i,j;
	int element;
	INSERT_SORT:for(i=1;i<N;i++){
#pragma HLS UNROLL
		element = array_out[i];
		j = i-1;
		LOOP1:while(j >= 0 && array_out[j] > element){
			array_out[j+1] = array_out[j];
			j = j-1;
		}
		array_out[j+1] = element;
	}

    return;
}
