import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last3.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last4.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last7.dart';
import 'package:todo_employee/screens/homepage/widgets/last_container.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/inner_style.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';
import 'package:todo_employee/widgets/sideDividers.dart';

class LastContainer6 extends StatelessWidget {
  static const routeName = "/last6";

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Stack(
      overflow: Overflow.visible,
      children: [
        // Image.asset(
        //   "assets/images/map.png",
        //   fit: BoxFit.cover,
        // ),
        Container(
          width: double.infinity,
          child: Neumorphic(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            style: outerContainerStyle(context),
            child: Neumorphic(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              style: innerStyle(context),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  CircularProgressIndicator(),
                  // Text(
                  //   "Login before",
                  //   style: Theme.of(context).textTheme.bodyText1,
                  // ),
                  const SizedBox(height: 20),
                  Text('Preparing your schedule, Please wait.',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .merge(TextStyle(fontWeight: FontWeight.w600))),
                  const SizedBox(height: 20),
                  // Text(
                  //   "0.5 km Away",
                  //   style: Theme.of(context).textTheme.bodyText1,
                  // ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -15,
          child: Container(
            width: screenwidth / 1.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                CustomButton(
                  horizontalPadding: 30,
                  verticalPadding: 10,
                  text: "REFRESH",
                  onPressed: () {
                    Navigator.pushNamed(context, LastContainer7.routeName);
                  },
                  textStyle: Theme.of(context).primaryTextTheme.headline6.merge(
                      TextStyle(
                          color: darkblue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ),
                // CustomButton(
                //   horizontalPadding: 30,
                //   verticalPadding: 10,
                //   text: "NO",
                //   onPressed: () {
                //     Navigator.pushNamed(context, LastContainer4.routeName);
                //   },
                //   textStyle: Theme.of(context)
                //       .primaryTextTheme
                //       .headline6
                //       .merge(TextStyle(color: lightblue, fontSize: 12)),
                // ),
                // const SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
