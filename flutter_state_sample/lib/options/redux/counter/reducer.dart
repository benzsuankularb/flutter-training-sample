import 'actions.dart';
import 'state.dart';

CounterState counterReducer(CounterState state, dynamic action) {
  if (action == Increase) {
    Increase increaseAction = action;
    state.count += increaseAction.amount;
    return state;
  }

  if (action == Decrease) {
    Decrease decreaseAction = action;
    state.count -= decreaseAction.amount;
    return state;
  }

  return null;
}
