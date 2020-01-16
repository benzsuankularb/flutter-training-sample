import 'package:flutter_state_sample/options/services/count_service.dart';
import 'package:redux/redux.dart';
import 'actions.dart';
import 'state.dart';

class RandomIncreaseMiddleware {
  final CountService countService;

  RandomIncreaseMiddleware({this.countService});

  void listen(
    Store<CounterState> store,
    dynamic action,
    NextDispatcher next,
  ) async {
    if (action is RandomIncrease) {
      final randomCount = await countService.random();
      next(Increase(amount: randomCount));
    }
    next(action);
  }
}
