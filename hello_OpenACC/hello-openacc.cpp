#include <stdio.h>
#include <openacc.h>

int main() {
    #pragma acc parallel
    {
        printf("Hello, World!\n");
    }

    return 0;
}
