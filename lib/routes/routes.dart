import 'package:flutter/material.dart';
import 'package:todo_employee/screens/allscreen.dart';

Map<String, WidgetBuilder> routes() {
  return {
    OtpScreen.routeName: (ctx) => OtpScreen(),
    DashboardScreen.routeName: (ctx) => DashboardScreen(),
  };
}
