import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:todo_employee/core/functions/is_null_or_empty.dart';

part 'user_email_model.g.dart';

@HiveType(typeId: 4)
class UserEmailModel {
  @HiveField(0)
  final String code;
  @HiveField(1)
  final bool status;

  UserEmailModel({
    @required this.code,
    @required this.status,
  });

  static UserEmailModel convert(Map data) {
    if (isNullOREmpty(data)) return null;

    return UserEmailModel(
      code: data['code'],
      status: data['status'],
    );
  }
}
