import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  @override
  List<Object> get props => [loading, count];

  final bool loading;
  final int count;

  CounterState({this.count, this.loading = false});
}
