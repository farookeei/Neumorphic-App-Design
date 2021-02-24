import 'package:flutter/material.dart';
import 'package:todo_employee/screens/accountOverview/accountOverview.dart';
import 'package:todo_employee/screens/allscreen.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last10.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last2.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last3.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last4.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last5.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last6.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last7.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last8.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last9.dart';
import 'package:todo_employee/screens/homepage/widgets/last_container.dart';
import 'package:todo_employee/screens/otherScreens/CancellingWidget.dart';

Map<String, WidgetBuilder> routes() {
  return {
    OtpScreen.routeName: (ctx) => OtpScreen(),
    DashboardScreen.routeName: (ctx) => DashboardScreen(),
    ServiceRequestScreen.routeName: (ctx) => ServiceRequestScreen(),
    SettingsScreen.routeName: (ctx) => SettingsScreen(),
    AccountOverview.routeName: (ctx) => AccountOverview(),
    ReferAndEarn.routeName: (ctx) => ReferAndEarn(),
    LastContainer.routeName: (ctx) => LastContainer(),
    LastContainer2.routeName: (ctx) => LastContainer2(),
    LastContainer3.routeName: (ctx) => LastContainer3(),
    LastContainer4.routeName: (ctx) => LastContainer4(),
    LastContainer5.routeName: (ctx) => LastContainer5(),
    LastContainer6.routeName: (ctx) => LastContainer6(),
    LastContainer7.routeName: (ctx) => LastContainer7(),
    LastContainer8.routeName: (ctx) => LastContainer8(),
    LastContainer9.routeName: (ctx) => LastContainer9(),
    LastContainer10.routeName: (ctx) => LastContainer10(),
    CancellingWidget.routeName: (ctx) => CancellingWidget(),
    TodoListScreen.routeName: (ctx) => TodoListScreen()
  };
}
