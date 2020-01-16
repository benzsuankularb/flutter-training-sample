import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class RandomIncreased extends CounterEvent {}

class Increased extends CounterEvent {}

class Decreased extends CounterEvent {}
