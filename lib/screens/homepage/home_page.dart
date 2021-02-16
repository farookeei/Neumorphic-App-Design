import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/screens/homepage/widgets/top_container.dart';
import 'package:todo_employee/screens/homepage/widgets/work_chart.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';

import 'widgets/last_container.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListView(
        children: [
          TopContainer(),
          const SizedBox(height: 50),
          WorkChart(),
          const SizedBox(height: 20),
          CustomDivider(),
          const SizedBox(height: 20),
          LastContainer(),
        ],
      ),
    ));
  }
}
