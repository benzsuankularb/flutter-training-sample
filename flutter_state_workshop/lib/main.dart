import 'package:mobile/app.dart'
    show setArgs, addCrossDependency, startApp, startSystem;
import 'package:mobile/stores/app_store.dart';
import 'package:mobile/stores/loan_store.dart';
import 'package:mobile/systems/main_system.dart';
import 'package:mobile/views/main.dart';

main() {
  setArgs({});
  addStores();
  startApp(() => MainApp());
  startSystem(() => MainSystem());
}

void addStores() {
  // Add stores belows
  addCrossDependency(AppStore());
  addCrossDependency(LoanStore());
}
