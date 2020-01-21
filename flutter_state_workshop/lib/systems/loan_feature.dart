import 'package:mobile/systems/fetch_loan_rate_system.dart';
import 'package:mobx_system/mobx_system.dart';

class LoanFeature extends Feature {
  @override
  List<System> createSystems() {
    return [
      FetchLoanRateSystem(),
      FetchLoanRateSystem(),
      FetchLoanRateSystem(),
      FetchLoanRateSystem(),
      FetchLoanRateSystem(),
      FetchLoanRateSystem(),
      FetchLoanRateSystem(),
    ];
  }
}
