import 'package:flutter/material.dart';
import 'package:todo_employee/env/app_state.dart';
import 'package:todo_employee/widgets/snack_notification.dart';

void errorHandler(e, GlobalKey<ScaffoldState> scaffoldKey) {
  dynamic _errorMsg = StateHandler.errorHandler(e);
  snakBarNotification(
      notification: _errorMsg.toString(), scaffoldkey: scaffoldKey);
}
