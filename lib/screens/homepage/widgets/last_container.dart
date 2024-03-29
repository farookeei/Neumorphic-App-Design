import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:todo_employee/core/providers/daily_login_provider.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last2.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last4.dart';
import 'package:todo_employee/screens/homepage/widgets/top_container.dart';
import 'package:todo_employee/screens/homepage/widgets/work_chart.dart';
import 'package:todo_employee/screens/referEarn/referScreen.dart';
import 'package:todo_employee/widgets/bottomNavbar.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/inner_style.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';
import 'package:todo_employee/widgets/sideDividers.dart';

class LastContainer extends StatefulWidget {
  static const routeName = "/last-container";

  @override
  _LastContainerState createState() => _LastContainerState();
}

class _LastContainerState extends State<LastContainer> {
  bool _islLoading = false;
  Future<void> login() async {
    setState(() {
      _islLoading = true;
    });
    final _dailyLoginProvider =
        Provider.of<DailyLoginProvider>(context, listen: false);
    await _dailyLoginProvider.dailyLoginRequest();
    setState(() => _islLoading = false);
    if (_dailyLoginProvider.loginstatus) {
      Navigator.pushNamed(context, LastContainer4.routeName);
    }
  }

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
                Neumorphic(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                  style: outerContainerStyle(context),
                  child: Neumorphic(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    style: innerStyle(context),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "02 Sep 2020",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .caption
                                  .merge(TextStyle(
                                      color:
                                          Color.fromRGBO(77, 153, 249, 0.52))),
                            ),
                            SideDividers(screenWidth: screenwidth),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: CustomRoundBtn(
                                onPressed: () {},
                                title: "26 °C",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        _islLoading
                            ? CircularProgressIndicator()
                            : Text('Will you Login at 10:00am ?',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .merge(TextStyle(
                                        fontWeight: FontWeight.w600))),
                        const SizedBox(height: 20),
                        CustomDivider(startspace: 130),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -14,
                  child: Container(
                    width: screenwidth - 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        CustomButton(
                          horizontalPadding: 10,
                          verticalPadding: 10,
                          text: "Yes, I will",
                          onPressed: () {
                            login();
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
                          horizontalPadding: 10,
                          verticalPadding: 10,
                          text: "No, I'am on leave",
                          onPressed: () {
                            Navigator.pushNamed(
                                context, LastContainer2.routeName);
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
