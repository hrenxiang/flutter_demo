void test() {
  List<int> list = [1,2,3];
  forEach(list, print);
}

void forEach(List<int> list, void func(int element)) {
  for (var value in list) {
    func(value);
  }
}

void main() {
  test(); // 输出： 1  2  3
}
