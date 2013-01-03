/*
 * =================================================
 *
 *  Filename: main.cu
 *  Description: main file for timehisto project
 *
 *  Version:    1.0
 *  Created:    Wed Apr 27 19:48:09 EDT 2011
 *  Revision:   none
 *  Compiler:   nvcc
 *  
 *  Author: Lane Harrison, Ltharri1@uncc.edu 
 *
 * =================================================
 */

// Includes
#include <stdio.h>
#include <cuda.h>

// Global Variables

// Kernel Functions

__global__ void add( int a, int b, int *c ){
    *c = a + b;
}

// Regular Functions
int main(void) {
    int c;
    int *dev_c;

    cudaMalloc( (void**)&dev_c, sizeof(int) );

    add<<<1, 1>>> ( 2, 7, dev_c );

    cudaMemcpy( &c,
                dev_c,
                sizeof(int),
                cudaMemcpyDeviceToHost );
    printf( "2 + 7 = %d\n", c );
    cudaFree( dev_c );

    return 0;
}


