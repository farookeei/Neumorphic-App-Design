import 'package:hive/hive.dart';

import 'package:path_provider/path_provider.dart' as path_Provider;
import 'package:todo_employee/core/models/otp_model.dart';
import 'package:todo_employee/core/models/user_details.dart';
import 'package:todo_employee/core/models/user_email_model.dart';
import 'package:todo_employee/core/models/user_model.dart';

import 'otp_database.dart';
import 'user_database.dart';

hiveInitalSetup() async {
  final appDocumnetDirectory =
      await path_Provider.getApplicationDocumentsDirectory();

  Hive.registerAdapter(OTPModelAdapter());
  Hive.registerAdapter(UserDetailsAdapter());
  Hive.registerAdapter(UserEmailModelAdapter());
  Hive.registerAdapter(UserModelAdapter());
  // Hive.registerAdapter(UserTypeAdapter());

  Hive.init(appDocumnetDirectory.path);

  await Hive.openBox(UserDatabase.boxname);
  await Hive.openBox(OTPDatabase.boxname);
  // await Hive.openBox(UserTypeDatabase.boxname);
}
