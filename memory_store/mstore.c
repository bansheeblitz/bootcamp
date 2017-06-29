long mult2(long, long);

int multstore(long x, long y, long *dest) {
  long t = mult2(y,x);
  *dest = t;
  return 3;
}
