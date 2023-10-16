import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:miniproject_traveller/Domain/core/di/dependency_injection.config.dart';

final get = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  await $initGetIt(get, environment: Environment.prod);
}
