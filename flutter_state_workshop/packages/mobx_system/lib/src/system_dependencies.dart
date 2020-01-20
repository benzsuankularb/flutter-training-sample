part of 'system.dart';

class Dependencies {
  static String _getNoDependenciesErrorMessage(Type type, {String key = ""}) =>
      "No dependencies that is ${type.toString()} $key";

  final GetIt _getIt;

  Dependencies() : _getIt = GetIt.asNewInstance() {
    _getIt.allowReassignment = true;
  }

  T get<T>({String key}) {
    var value = _getIt.get<T>(key);
    assert(
      value != null,
      key == null
          ? _getNoDependenciesErrorMessage(T.runtimeType)
          : _getNoDependenciesErrorMessage(T.runtimeType, key: key),
    );
    return value;
  }

  void add<T>(T value, {String instanceName}) {
    assert(value != null);
    _getIt.registerSingleton(value, instanceName: instanceName);
  }

  void addLazy<T>(T Function() builder, {String instanceName}) {
    assert(builder != null);
    _getIt.registerLazySingleton(builder, instanceName: instanceName);
  }
}
