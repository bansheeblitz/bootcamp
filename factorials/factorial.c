#include <stdio.h>
 
int factorial(int val);
 
int main() {
    int i;
    printf("\tValue\tFactorial\n");
    for (i = 0; i <= 20; i++) {
        printf("\t%d\t%i\n", i, factorial(i));
    }
    return 0;
}
 
// create factorial function here:
