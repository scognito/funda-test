import 'package:funda_test/services/web_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setupLocators() async {
  locator.registerLazySingleton<WebService>(() => WebService());
}
