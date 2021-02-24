import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/screens/homepage/home_page.dart';
import 'package:todo_employee/screens/homepage/widgets/last_container.dart';
import 'package:todo_employee/widgets/bottomNavbar.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = "/dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LastContainer(),
      // bottomNavigationBar: BottomNavbar(),
    );
  }
}
