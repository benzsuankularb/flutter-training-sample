abstract class CounterAction {}

class Increase extends CounterAction {
  final amount;
  Increase({this.amount = 1});
}

class Decrease extends CounterAction {
  final amount;
  Decrease({this.amount = 1});
}

class RandomIncrease extends CounterAction {}
