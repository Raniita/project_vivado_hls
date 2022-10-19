/*
*   Testbench Vivado HLS funcion insertion sort
*   Enrique y Lucia
*/
#include <stdio.h>

#define N 20

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

//void insertion_sort(int array[N], int array_out[N]);

void print_array(int array[N]){
	int i;
    printf("\n");
	for(i=0;i<N;i++){
		printf("%d", array[i]);
		printf(", ");
	}
    return;
}

void print_array_sw_hw(int array_sw[N], int array_hw[N]){
    printf("Printing arrays: array_sw | array_hw \r\n");
    int i;
    for(i=0;i<N;i++){
        printf("[%d]  SW: %d | HW: %d \r\n", i, array_sw[i], array_hw[i]);
    }
    return;
}

int main(){
    printf("Sorting Algorithms. Enrique y Lucia \r\n\n");

    // array1 length == 20
    int array1[N] = {13, 20, 44, 123, 66, 45, 76, 44, 33, 2,
                     7, 10, 88, 56, 90, 33, 30, 22, 60, 45};
    
    int array1_out_sw[N];
    int array1_out_hw[N];
    
    // SW 
    insertion_sort_sw(array1, array1_out_sw);
    printf("Insertion sort sw done.\r\n");
    
    // HW
    //insertion_sort(array1, array1_out_hw);
    insertion_sort_sw(array1, array1_out_hw);
    printf("Insertion sort hw done.\r\n");

    print_array_sw_hw(array1_out_sw, array1_out_hw);

    printf("\r\nExit");
    return 0;
}