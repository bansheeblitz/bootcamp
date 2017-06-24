#include <stdio.h>
int main() {
/* count of: 
digits, 
lower-case letters,
other  
*/
  // initialize variables;

 
  char c;
  int i;
  int ndigit;
  int loC;
  int upC;
  int nother;
 
  while ((c = getchar()) != EOF) {
    // process one character
    if (c >= '0' && c <= '9') {
      ++ndigit
    }
    else if (islower(c)) {
      loC++;
    }
    else if (isupper(c)) {
      upC++;
    }
    else if (c == '' || c == '\n' || c == '\t');
      continue;
    }
    else {
      nother++;
    }
  }
 
  // Output results here
  printf("digits = %d\n", ndigit);
  printf("lowercase = %d\n", loC;);
  printf("uppercase = %d\n", upC);
  printf("other = %d\n", nother);
  return 0;
}
