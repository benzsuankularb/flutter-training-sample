import 'actions.dart';
import 'state.dart';

CounterState counterReducer(CounterState state, dynamic action) {
  if (action is Increase) {
    Increase increaseAction = action;
    state.count += increaseAction.amount;
    return state;
  }

  if (action is Decrease) {
    Decrease decreaseAction = action;
    state.count -= decreaseAction.amount;
    return state;
  }

  return null;
}
