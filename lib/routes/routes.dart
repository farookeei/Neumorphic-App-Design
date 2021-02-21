import 'package:flutter/material.dart';
import 'package:todo_employee/screens/accountOverview/accountOverview.dart';
import 'package:todo_employee/screens/allscreen.dart';

Map<String, WidgetBuilder> routes() {
  return {
    OtpScreen.routeName: (ctx) => OtpScreen(),
    DashboardScreen.routeName: (ctx) => DashboardScreen(),
    ServiceRequestScreen.routeName: (ctx) => ServiceRequestScreen(),
    SettingsScreen.routeName: (ctx) => SettingsScreen(),
    AccountOverview.routeName: (ctx) => AccountOverview(),
    ReferAndEarn.routeName: (ctx) => ReferAndEarn(),
  };
}
