/*
*   Vivado HLS: funcion insertion
*   Enrique y Lucia
*/
#include <stdio.h>

#define N 20

void insertion_sort(int array[N], int array_out[N]){

    int c;
    COPY:for(c=0;c<N;c++){
        array_out[c] = array[c];
    }
    
    int i,j;
	int element;
	INSERT_SORT:for(i=1;i<N;i++){
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