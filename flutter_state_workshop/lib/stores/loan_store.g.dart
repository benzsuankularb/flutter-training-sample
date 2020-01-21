// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoanStore on _LoanStore, Store {
  Computed<bool> _$isRequestingOverMaxComputed;

  @override
  bool get isRequestingOverMax => (_$isRequestingOverMaxComputed ??=
          Computed<bool>(() => super.isRequestingOverMax))
      .value;

  final _$maxLoanValueAtom = Atom(name: '_LoanStore.maxLoanValue');

  @override
  double get maxLoanValue {
    _$maxLoanValueAtom.context.enforceReadPolicy(_$maxLoanValueAtom);
    _$maxLoanValueAtom.reportObserved();
    return super.maxLoanValue;
  }

  @override
  set maxLoanValue(double value) {
    _$maxLoanValueAtom.context.conditionallyRunInAction(() {
      super.maxLoanValue = value;
      _$maxLoanValueAtom.reportChanged();
    }, _$maxLoanValueAtom, name: '${_$maxLoanValueAtom.name}_set');
  }

  final _$requestLoanValueAtom = Atom(name: '_LoanStore.requestLoanValue');

  @override
  double get requestLoanValue {
    _$requestLoanValueAtom.context.enforceReadPolicy(_$requestLoanValueAtom);
    _$requestLoanValueAtom.reportObserved();
    return super.requestLoanValue;
  }

  @override
  set requestLoanValue(double value) {
    _$requestLoanValueAtom.context.conditionallyRunInAction(() {
      super.requestLoanValue = value;
      _$requestLoanValueAtom.reportChanged();
    }, _$requestLoanValueAtom, name: '${_$requestLoanValueAtom.name}_set');
  }

  final _$_LoanStoreActionController = ActionController(name: '_LoanStore');

  @override
  void changeRequestLoanValue(double value) {
    final _$actionInfo = _$_LoanStoreActionController.startAction();
    try {
      return super.changeRequestLoanValue(value);
    } finally {
      _$_LoanStoreActionController.endAction(_$actionInfo);
    }
  }
}
