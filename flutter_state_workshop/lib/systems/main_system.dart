import 'package:mobile/systems/fetch_loan_rate_system.dart';
import 'package:mobile/systems/loan_feature.dart';
import 'package:mobx_system/mobx_system.dart';

class MainSystem extends Feature {
  @override
  List<System> createSystems() {
    return [
      LoanFeature(),
    ];
  }
}
