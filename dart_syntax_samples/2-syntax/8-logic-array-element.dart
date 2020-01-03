void sample() {
  List<int> logicalArray = [
    for (int i = 0; i < 10; i++) i,
    if (true) 3,
  ];
}
