import 'package:hive/hive.dart';

part 'daily_work_model.g.dart';

@HiveType(typeId: 5)
class DailyLoginModel {
  @HiveField(0)
  final bool isLeave;
  @HiveField(1)
  final bool systemLogin;
  @HiveField(2)
  final bool loginConfirmed;
  @HiveField(3)
  final bool loginCancelled;
  @HiveField(4)
  final String id;
  @HiveField(5)
  final String date;
  @HiveField(6)
  final String employeeId;
  @HiveField(7)
  final List<dynamic> coordinates;

  DailyLoginModel(
      {this.id,
      this.date,
      this.employeeId,
      this.isLeave,
      this.loginCancelled,
      this.loginConfirmed,
      this.systemLogin,
      this.coordinates});

  static DailyLoginModel convert(Map data) {
    return DailyLoginModel(
        date: data["login_details"]["date"],
        employeeId: data["login_details"]["employeeId"],
        id: data["login_details"]["_id"],
        isLeave: data["login_details"]["isLeave"],
        loginCancelled: data["login_details"]["loginCancelled"],
        loginConfirmed: data["login_details"]["loginConfirmed"],
        systemLogin: data["login_details"]["systemLogin"],
        coordinates: data["login_details"]["location"]["coordinates"]);
  }
}
