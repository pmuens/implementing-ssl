#include "utils.h"

void xor (unsigned char *target, const unsigned char *src, int len) {
  while (len--) {
    *target++ ^= *src++;
  }
}
