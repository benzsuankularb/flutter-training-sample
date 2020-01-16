import 'dart:async';

import 'package:flutter_state_sample/options/services/count_service.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'event.dart';
import 'state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final CountService counterService;

  CounterBloc({@required this.counterService}) : assert(counterService != null);

  @override
  CounterState get initialState => CounterState(count: 0);

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is Increased) {
      yield CounterState(count: state.count + 1);
    }

    if (event is RandomIncreased) {
      yield CounterState(
        count: state.count,
        loading: true,
      );
      final randomCount = await counterService.random();
      yield CounterState(
        count: state.count + randomCount,
        loading: false,
      );
    }

    if (event is Decreased) {
      yield CounterState(count: state.count - 1);
    }
  }
}
