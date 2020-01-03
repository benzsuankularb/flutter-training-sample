class SampleClass {
  void one() {}

  int two() {
    return 2;
  }

  int three() {
    return 3;
  }
}

void sample() {
  var a = SampleClass()
    ..one()
    ..two()
    ..three();
}
