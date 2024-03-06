void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) {
    print(number * 2);
  });

  numbers.forEach((element) => print(element));
}
