import 'package:get_it/get_it.dart';
import 'package:todo_employee/core/database/dailyLogin_databse.dart';
import 'package:todo_employee/core/database/otp_database.dart';
import 'package:todo_employee/core/database/user_database.dart';
import 'package:todo_employee/core/validators/validator.dart';

import 'dio_serices_API.dart';

GetIt locator = GetIt.instance;

void serviceLocators() {
  locator.registerLazySingleton<DioAPIServices>(() => DioAPIServices());
  locator.registerLazySingleton<Validators>(() => Validators());
  locator.registerLazySingleton<OTPDatabase>(() => OTPDatabase());
  locator.registerLazySingleton<UserDatabase>(() => UserDatabase());
  locator.registerLazySingleton<DailyLoginDatabase>(() => DailyLoginDatabase());
  // locator.registerLazySingleton<UserTypeDatabase>(() => UserTypeDatabase());
}
