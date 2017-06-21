#include <stdio.h>

int doStuff(int, int);

int main() {
  int x = 5; 
  int y = 10; 
  int z;

  z = doStuff(x,y);
  printf("In main. x=%d, y=%d, z=%d\n", x, y, z);
  return 0;
}

int doStuff(int arg1, int arg2) {
  int x = 1;
  int y = 2;
  int z = 3;

  printf("In doStuff.  x = %d, y = %d, z = %d,", x, y, z);
  printf("arg1 = %d, arg2 = %d\n", arg1, arg2);

  arg1++;
  arg2++;
  return 100*arg1 + arg2;
}


