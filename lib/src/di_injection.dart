import 'package:chat_task/core/helper/navigation_helper.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.I;

void onInit() {
  sl.registerLazySingleton<NavigationHelper>(() => NavigationHelper());
}