#include <stdio.h>
int isTest(int n) {
  for (int x = 2; x <= n / 2; x++)
    if (!(n % x))
      return 0;
  return 1;
}

void main() {
  int numTest = 0;
  for (int x = 2; x < 250001; x++)
    numTest += isTest(x);
  printf("%d\n", numTest);
}
