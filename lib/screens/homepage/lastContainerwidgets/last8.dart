import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last3.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last4.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last7.dart';
import 'package:todo_employee/screens/homepage/widgets/last_container.dart';
import 'package:todo_employee/screens/homepage/widgets/top_container.dart';
import 'package:todo_employee/screens/homepage/widgets/work_chart.dart';
import 'package:todo_employee/screens/otherScreens/CancellingWidget.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/inner_style.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';
import 'package:todo_employee/widgets/sideDividers.dart';
import 'package:todo_employee/widgets/bottomNavbar.dart';

class LastContainer8 extends StatelessWidget {
  static const routeName = "/last8";

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 400,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  TopContainer(),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: WorkChart(),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            CustomDivider(),
            const SizedBox(height: 15),
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  width: double.infinity,
                  child: Neumorphic(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    style: outerContainerStyle(context),
                    child: Neumorphic(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      style: innerStyle(context),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 40),
                            child: Text(
                              "Are you sure you want to cancel?",
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -15,
                  child: Container(
                    width: screenwidth - 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        CustomButton(
                          horizontalPadding: 30,
                          verticalPadding: 10,
                          text: "YES",
                          onPressed: () {
                            Navigator.pushNamed(
                                context, CancellingWidget.routeName);
                          },
                          textStyle: Theme.of(context)
                              .primaryTextTheme
                              .headline6
                              .merge(TextStyle(
                                  color: darkblue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12)),
                        ),
                        CustomButton(
                          horizontalPadding: 30,
                          verticalPadding: 10,
                          text: "NO",
                          onPressed: () {
                            Navigator.pushNamed(
                                context, LastContainer7.routeName);
                          },
                          textStyle: Theme.of(context)
                              .primaryTextTheme
                              .headline6
                              .merge(TextStyle(color: lightblue, fontSize: 12)),
                        ),
                        const SizedBox(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
