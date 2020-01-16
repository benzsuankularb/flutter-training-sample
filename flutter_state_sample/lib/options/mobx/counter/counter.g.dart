// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _Counter, Store {
  final _$loadingAtom = Atom(name: '_Counter.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
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

  final _$randomIncreaseAsyncAction = AsyncAction('randomIncrease');

  @override
  Future<dynamic> randomIncrease() {
    return _$randomIncreaseAsyncAction.run(() => super.randomIncrease());
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
}
