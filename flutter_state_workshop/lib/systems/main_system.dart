import 'package:mobile/systems/app_systems/app_systems.dart';
import 'package:mobile/systems/create_dependencies_systems/create_dependencies_systems.dart';
import 'package:mobx_system/mobx_system.dart';

class MainSystem extends Feature {
  @override
  List<System> createSystems() {
    return [
      CreateDependenciesSystems(),
      AppSystems(),
      // ExampleSystem(),
    ];
  }
}
