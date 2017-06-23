#include <stdio.h>
 
int main() {
    int x = 5;
    int y = 10;
    int *pa = &x;
    int *pb = &y;
 
    pa = pb;
 
    x = 6;
    y = 15;
 
    printf("*pa = %d, *pb = %d\n", *pa, *pb);
    printf("x = %d, y = %d\n", x, y);
    return 0;
}
