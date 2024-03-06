// void main() {
//   num a = 1;
//   num b = 2.1;
//   print(a + b);
//
//   int c = 2;
//   double d = 3.1;
// }

void stringDemo() {
  var str1 = 'abc';

  var str2 = "abc";

  var str3 = '''abc def efg
abc def
abc''';

  var str4 = "abc\n" "def\n" "abc";

  print(str1);
  print("========");
  print(str2);
  print("========");
  print(str3);
  print("========");
  print(str4);
}

void boolDemo() {
  bool flag1 = true;
  print(flag1);
}

void recordDemo() {
  Record record = ('a', b: 1, c: true);
  print(record.toString()); // 输出 (a, b: 1, c: true)

  record = ('e', b: 2, c: false);
  print(record.toString()); // 输出 (e, b: 2, c: false)

  var record2 = ('a', b: 1, c: true, "d");
  print(record2.$1); // 输出 a
  print(record2.b); // 输出 b
  print(record2.c); // 输出 true
  print(record2.$2); // 输出 d

  record2 = ('e', b: 2, c: false, "g");
  print(record2.$1); // 输出 e
  print(record2.b); // 输出 2
  print(record2.c); // 输出 false
  print(record2.$2); // 输出 g

  Record record3 = (name: 'huangrx', age: '10', city: 'zhengzhou');
  Record record4 = (name: '', age: '');
  record4 = record3;
  print(record4); // 输出 (age: 10, city: zhengzhou, name: huangrx)

  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color); // Prints 'true'.

  ({int x, int y, int z}) point1 = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color1 = (r: 1, g: 2, b: 3);
  print(point1 == color1); // Prints 'false'. Lint: Equals on unrelated types.

  (String, int) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };

  var info = userInfo(json);
  print(info.$1); // print: Dash
  print(info.$2); // print: 10

  var (a, b) = userInfo(json);
  print(a); // print: Dash
  print(b); // print: 10
}

void listDemo() {
  var list1;
  print(list1); // print：null

  var list2 = [1, '2'];
  for (var value in list2) {
    print(value); // print: 1 2
  }

  // 可变List
  var list3 = [1, '2'];
  list3.add(true);
  for (var value in list3) {
    print(value); // print: 1 2 true
  }

  // 不可变List
  var list4 = const [1, '2'];
  // 运行时报错
  // Unhandled exception:
  // Unsupported operation: Cannot add to an unmodifiable list
  // list4.add(true);

  // List list5;
  // print(list5);

  List list6 = [1, '2'];
  print(list6);

  List<int> list7 = [1, 2];
  print(list7);

  List<num> list8 = [1, 2.2];
  print(list8);
}

void mapDemo() {
  var map1 = {};
  print(map1); // print：{}

  var map2 = {1: 'a', '2': 'b', true: 'c'};
  print(map2); // print: {1: a, 2: b, true: c}
  print(map2[1]); // print: a
  print(map2[2]); // print: null
  print(map2['2']); // print: b
  print(map2[true]); // print: c

  // 可变
  map2 = {3: 'd'};
  print(map2); // print: {3: d}

  // 不可变
  var map3 = const {1: 'a', '2': 'b', true: 'c'};
  // 运行时报错
  // Unhandled exception:
  // Unsupported operation: Cannot modify unmodifiable map
  map3.putIfAbsent(4, () => 'e');
  print(map3);

  var map4 = const {1: 'a', '2': 'b', true: 'c'};
  map4 = {1: '1'};
  print(map4); // print: {1: 1}
  map4.putIfAbsent(4, () => 'e');
  print(map4); // print: {1: 1, 4: e}
}

void setDemo() {
  var set1 = {1, 2, 1};
  print(set1); // 输出 {1, 2}

  var set2 = {1, 2};
  set2.add(3);
  set2.add(1);
  print(set2); // print: {1, 2, 3}

  Set<String> set3 = {'1', '2', '3'};
  print(set3); // print: {1, 2, 3}
}

void main() {
  // stringDemo();
  //
  // boolDemo();
  //
  // recordDemo();
  //
  // listDemo();
  //
  // mapDemo();
  //
  // setDemo();
}
