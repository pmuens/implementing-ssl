#include <stdio.h>
#include <stdlib.h>

int main(void) {
  uint8_t a = 1;
  uint8_t b = 2;

  uint8_t c = a + b;

  printf("%d + %d = %d\n", a, b, c);

  return EXIT_SUCCESS;
}
