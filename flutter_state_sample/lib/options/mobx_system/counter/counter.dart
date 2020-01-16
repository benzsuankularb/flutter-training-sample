import 'package:mobx/mobx.dart';

// Include generated file
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-class
abstract class _Counter with Store {
  @observable
  bool onRequestRandom = false;

  @observable
  ObservableFuture<int> randomIncreaseFuture;

  @observable
  int count = 0;

  @action
  void increase({amount = 1}) {
    count += amount;
  }

  @action
  void decrease({amount = 1}) {
    count -= amount;
  }

  @action
  void requestRandomIncrease() {
    onRequestRandom = true;
  }
}
