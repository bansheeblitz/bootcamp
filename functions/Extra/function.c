#include "function.h"

int main() {
  int x = 5; 
  int y = 10; 
  int z;

  z = doStuff(x,y);
  printf("In main. x=%d, y=%d, z=%d\n", x, y, z);
  return 0;
}
