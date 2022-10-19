/*
*   Vivado HLS: funcion heap
*   Enrique y Lucia
*/
#include <stdio.h>

#define N 20

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
			SWAP:while (array[j] > array[(j - 1) / 2]){
				swap(array[j], array[(j - 1) / 2]);
				j = (j - 1) / 2;
			}
		}
	}
}

void heap_sort_sw(int array[N], int array_out[N]){
	
	int c;
    COPY:for(c=0;c<N;c++){
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