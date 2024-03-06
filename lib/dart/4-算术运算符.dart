var line = "============";

void test1() {
  var a;
  a ??= 10;
  print(a);
  print(line);

  var b;
  b = 11;
  print(b ??= a); // 输出：11
  print(line);
}

void test2() {
  var a;
  var b;
  print(b ?? a); // 输出： null
  a = 10;
  print(a ?? b); // 输出：10
  print(b ?? a); // 输出：10
  b = 5;
  print(a ?? b); // 输出：10
  print(b ?? a); // 输出：5
}

void main() {
  test1();
  // test2();
}
