/*
*  Testbench Vivado HLS
*  Enrique y Lucia
*/
#include<stdio.h>

#define N 20

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

void bubble_sort(int array[N], int array_out[N]);

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

    int array1[N] = {13, 20, 44, 123, 66, 45, 76, 44, 33, 2,
                     7, 10, 88, 56, 90, 33, 30, 22, 60, 45};
    //int array1_size = sizeof(array1)/sizeof(array1[0]);
    int array1_out_sw[N];
    int array1_out_hw[N];
    
    // SW 
    bubble_sort_sw(array1, array1_out_sw);
    printf("Bubble sort sw done.\r\n");
    
    // HW
    bubble_sort(array1, array1_out_hw);
    //bubble_sort_sw(array1, array1_out_hw);
    printf("Bubble sort hw done.\r\n");

    print_array_sw_hw(array1_out_sw, array1_out_hw);

    printf("\r\nExit");
    return 0;
}
