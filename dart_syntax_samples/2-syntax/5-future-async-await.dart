void sample() async {
  await doAsync1();
}

Future<int> doAsync1() async {
  return 1;
}

Future<void> doAsync2() async {}
