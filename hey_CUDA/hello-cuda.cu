#include <iostream>

__global__ void helloCUDA() {
    printf("Hello, World! from thread %d\n", threadIdx.x);
}

int main() {
    // Launch the kernel with 1 block containing 10 threads
    helloCUDA<<<1, 10>>>();

    // Wait for all threads to finish executing
    cudaDeviceSynchronize();

    return 0;
}
