import 'package:mobx/mobx.dart';

part 'loan_store.g.dart';

class LoanStore = _LoanStore with _$LoanStore;

abstract class _LoanStore with Store {
  _LoanStore({this.maxLoanValue = 100, this.requestLoanValue = 10});
  @observable
  double maxLoanValue;

  @observable
  double requestLoanValue;

  @computed
  bool get isRequestingOverMax => requestLoanValue > requestLoanValue;

  @action
  void changeRequestLoanValue(double value) {
    this.requestLoanValue = value;
  }
}
