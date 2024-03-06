Function makeAdder(int addBy) {
return (int num) => num + addBy;
}

void main() {
var add2 = makeAdder(2);
print(add2(3)); // 输出：5
}
