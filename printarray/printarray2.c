#include <stdio.h>

// printArray goes here
void printArray(int* myArray, int arraySize) {
  int i = 0;
  int* curloc; //makes curloc a pointer
  curloc = myArray;
  while (i < arraySize) { 			//of that memory location
    printf("myArray[%d] = %d\n", i, *curloc); // *curloc prints out the value
    curloc++; //increase the memory location pointer by the type.
    i++;
  } 
}


int main() {
  int arraySize = 14;
  int myArray[arraySize];
  int i;
  myArray[0] = 0;
  myArray[1] = 1;
  for (i = 2; i < arraySize; i++) {
    myArray[i] = myArray[i-2] + myArray[i-1];
  }
  printArray(myArray, arraySize);
  return 0;
}
