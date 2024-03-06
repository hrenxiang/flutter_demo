// import 'package:flutter_demo/utils/calculate.dart' as calculate;
// import 'package:flutter_demo/utils/calculate2.dart' as calculate2;
//
// void main () {
//   print(calculate.add(1, 2));
//   print(calculate2.add(1, 2));
// }

// import 'package:flutter_demo/utils/calculate.dart' show add;
//
// void main () {
//   print(add(1, 2));
// }

import 'dart:async';

import 'package:flutter_demo/utils/calculate.dart';
import 'package:flutter_demo/utils/hello.dart' deferred as hello;

Future<void> say() async {
  await hello.loadLibrary();
  hello.say('你好');
}

void main() {
  say();
  print(add(1, 2));
}
