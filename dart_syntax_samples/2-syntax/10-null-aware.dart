void sample1() {
  String prop;
  String newString = prop ?? "replace if null";
  print(newString);
}

void sample2() {
  String a = null;
  a ??= "replace if null";
  print(a);
}

class Foo {
  void doSomething() {
    print("do something");
  }
}

void sample3() {
  Foo foo = null;
  foo?.doSomething();
}

void sample4() {
  List lowerNumbers = [1, 2, 3, 4, 5];
  List upperNumbers = null;
  List numbers = [...?lowerNumbers, ...?upperNumbers];
  print(numbers);
}
