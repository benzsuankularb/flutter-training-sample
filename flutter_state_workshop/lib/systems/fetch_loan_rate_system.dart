import 'package:mobile/stores/loan_store.dart';
import 'package:mobx_system/mobx_system.dart';

class FetchLoanRateSystem extends System {
  LoanStore loanStore;
  @override
  void loadDependencies(Dependencies dependencies) {
    loanStore = dependencies.get<LoanStore>();
  }

  @override
  void setUp() {
    reaction((_) => loanStore.requestLoanValue, (value) => {fetchData(value)});

    reactionWhen((_) => loanStore.isRequestingOverMax, () => {});
  }

  void fetchData(double value) async {
    // FETCH network
  }
}
