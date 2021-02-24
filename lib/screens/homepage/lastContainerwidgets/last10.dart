import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/screens/allscreen.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last3.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last4.dart';
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

class LastContainer10 extends StatelessWidget {
  static const routeName = "/last10";

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
                      child: Container(
                        // color: Colors.red,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 40),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomButton(
                              horizontalPadding: 20,
                              text: "00:45",
                              textStyle: Theme.of(context).textTheme.headline6,
                              onPressed: () {},
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Value 30",
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset("assets/images/send.png"),
                                const SizedBox(width: 10),
                                Text(
                                  "FLAT NO : A-103",
                                  style: Theme.of(context).textTheme.bodyText1,
                                )
                              ],
                            ),
                          ],
                        ),
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
                          text: "START",
                          onPressed: () {
                            Navigator.pushNamed(
                                context, TodoListScreen.routeName);
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
                          text: "CANCEL",
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(
                                context, CancellingWidget.routeName);
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
            )
          ],
        ),
      ),
    );
  }
}
