// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _Counter, Store {
  final _$onRequestRandomAtom = Atom(name: '_Counter.onRequestRandom');

  @override
  bool get onRequestRandom {
    _$onRequestRandomAtom.context.enforceReadPolicy(_$onRequestRandomAtom);
    _$onRequestRandomAtom.reportObserved();
    return super.onRequestRandom;
  }

  @override
  set onRequestRandom(bool value) {
    _$onRequestRandomAtom.context.conditionallyRunInAction(() {
      super.onRequestRandom = value;
      _$onRequestRandomAtom.reportChanged();
    }, _$onRequestRandomAtom, name: '${_$onRequestRandomAtom.name}_set');
  }

  final _$randomIncreaseFutureAtom =
      Atom(name: '_Counter.randomIncreaseFuture');

  @override
  ObservableFuture<int> get randomIncreaseFuture {
    _$randomIncreaseFutureAtom.context
        .enforceReadPolicy(_$randomIncreaseFutureAtom);
    _$randomIncreaseFutureAtom.reportObserved();
    return super.randomIncreaseFuture;
  }

  @override
  set randomIncreaseFuture(ObservableFuture<int> value) {
    _$randomIncreaseFutureAtom.context.conditionallyRunInAction(() {
      super.randomIncreaseFuture = value;
      _$randomIncreaseFutureAtom.reportChanged();
    }, _$randomIncreaseFutureAtom,
        name: '${_$randomIncreaseFutureAtom.name}_set');
  }

  final _$valueAtom = Atom(name: '_Counter.value');

  @override
  int get count {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.count;
  }

  @override
  set count(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.count = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_CounterActionController = ActionController(name: '_Counter');

  @override
  void increase({dynamic amount = 1}) {
    final _$actionInfo = _$_CounterActionController.startAction();
    try {
      return super.increase(amount: amount);
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrease({dynamic amount = 1}) {
    final _$actionInfo = _$_CounterActionController.startAction();
    try {
      return super.decrease(amount: amount);
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void requestRandomIncrease() {
    final _$actionInfo = _$_CounterActionController.startAction();
    try {
      return super.requestRandomIncrease();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }
}
