#include <stdint.h>

extern void basemul_red(uint64_t *rp, uint64_t *ap, uint64_t *bp, uint64_t *qp);

int main(void)
{
  uint64_t rp[8], ap[8], bp[8], qp[8];
  basemul_red(rp, ap, bp, qp);
  return 0;
}
