// void main() => print(sum(1, c: 3, b: 2,));

sum(int a, {int? b, int? c}) {
  // int? 告诉编译器，可以为空，我处理了后面为空的情况
  b ??= 0;
  c ??= 0;
  return a + b + c;
}

void main() => print(sum2(1, 2, 3));

sum2(int a, [int? b, int? c]) {
  // int? 告诉编译器，可以为空，我处理了后面为空的情况
  b ??= 0;
  c ??= 0;
  return a + b + c;
}
