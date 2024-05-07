#include <iostream>
#include <cstdlib> // For standard C library functions

__global__ void print_from_gpu(void) {
    printf("Hello World! from thread [%d,%d] From device\n", threadIdx.x, blockIdx.x); 
}

int main(void) { 
    std::cout << "Hello World from host!\n"; 
    print_from_gpu<<<10,10>>>();
    cudaDeviceSynchronize();
    return 0; 
}