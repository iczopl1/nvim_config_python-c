int main(int argc, char *argv[]) {
  int b = 4;

  char a[10];
  a[9] = 10;
  if (b == 3) {
    a[3] = 3;
    if (b == 1) {
      a[3] = 1;
    }
  }
  return 0;
}
