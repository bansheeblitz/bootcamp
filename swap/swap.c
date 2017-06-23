#include <stdio.h>
 
void swap(int* aPtr, int* bPtr) {
    int temp = *aPtr;  
    *aPtr = *bPtr;
    *bPtr = temp;
}
 
int main() {
    int a = 5;
    int b = 10;
 
    printf("a=%d, b=%d\n", a, b);
 
    swap(&a, &b); 
 
    printf("a=%d, b=%d\n", a, b);
 
    return 0;
}
