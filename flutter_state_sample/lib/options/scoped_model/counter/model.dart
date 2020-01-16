import 'package:flutter_state_sample/options/services/count_service.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  final CountService countService;

  int _counter = 0;
  int get count => _counter;

  CounterModel({this.countService});

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrease() {
    _counter--;
    notifyListeners();
  }

  void randomIncrease() async {
    final randomCount = await countService.random();
    _counter += randomCount;
    notifyListeners();
  }
}
