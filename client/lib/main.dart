void main(List<String> args) {
  int y = 9;
  int h = 10;

  dynamic s = y < 10 || h - 1 == y ? y + 1 : y - 10 - (-1 + -1);
  print(s);
}
