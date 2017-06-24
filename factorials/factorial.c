#include <stdio.h>
 
long long int factorial(int val);
 
int main() {
    int i;
    printf("\tValue\tFactorial\n");
    for (i = 0; i <= 20; i++) {
        printf("\t%d\t%lld\n", i, factorial(i));
    }
    return 0;
}
 
// create factorial function here:
long long int factorial (int i) {
   long long int n; //step
   long long int j; //result
   j = i;
   while (i != 0) {
      if ((i-1) != 0) {
         n = j * (i-1);
         j = n;
      }
      i--;
   }
   return j;
}
