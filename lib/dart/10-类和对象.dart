class Person {
  String? name;
  int? age;
  String? sex;
  final int height = 186;

  Person();

  Person.withParam(this.name, this.age, this.sex);

  void run() {
    print('name: $name, age: $age, sex: $sex, height: $height');
  }
}

class Student extends Person {
  String? school;

  Student();

  Student.withParam(
      String super.name, int super.age, String super.sex, this.school)
      : super.withParam();

  @override
  void run() {
    print(
        'name: $name, age: $age, sex: $sex, height: $height, school: $school');
  }
}

void main() {
  Person person = Person();
  person.name = "huangrx";
  person.age = 25;
  person.sex = '男';

  person.run(); // 输出：name: huangrx, age: 25, sex: 男

  Person wx = Person.withParam("wx", 24, "女");
  wx.run(); // 输出：name: wx, age: 24, sex: 女, height: 186

  Person student = Student.withParam("huangbb", 1, "男", "清华大学");
  student.run(); // 输出：name: huangbb, age: 1, sex: 男, height: 186, school: 清华大学

  MyClass myClass = MyClass();
  print(myClass);

  var point = Point.origin();
  print(point.x); // 输出： 2
  print(point.y); // 输出：1
}

class MyClass {
  // 工厂构造函数
  factory MyClass() {
    // 返回一个新的实例
    return MyClass._();
  }

  // 私有构造函数
  MyClass._();
}

class Point {
  final int x;
  final int y;

  Point.origin()
      : x = 2,
        y = 1;
}
