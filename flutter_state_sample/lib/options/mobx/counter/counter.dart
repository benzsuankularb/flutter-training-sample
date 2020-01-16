import 'package:flutter_state_sample/options/services/count_service.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-class
abstract class _Counter with Store {
  final CountService countService;
  _Counter({this.countService});

  @observable
  bool loading = false;

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
  Future randomIncrease() async {
    loading = true;
    final randomCount = await countService.random();
    loading = false;
    increase(amount: randomCount);
  }
}
