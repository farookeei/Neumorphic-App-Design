import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last3.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last4.dart';
import 'package:todo_employee/screens/homepage/widgets/last_container.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/inner_style.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';
import 'package:todo_employee/widgets/sideDividers.dart';

class LastContainer7 extends StatelessWidget {
  static const routeName = "/last7";

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
                  Text(
                    "Your next task is at 11:00 am.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  // Text(
                  //   "Login before",
                  //   style: Theme.of(context).textTheme.bodyText1,
                  // ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "PREMIUM",
                            style: Theme.of(context).textTheme.bodyText1.merge(
                                TextStyle(
                                    color: lightblue,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "TEAM",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .merge(TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            "JAFFER ABDUL",
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "60",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Text(
                                "min",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "DURATION",
                            style: Theme.of(context).primaryTextTheme.bodyText1,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "FLAT NO: A-103",
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  // Text('Are you sure,you can"t login in',
                  //     style: Theme.of(context)
                  //         .textTheme
                  //         .headline6
                  //         .merge(TextStyle(fontWeight: FontWeight.w600))),
                  // const SizedBox(height: 20),
                  // Text(
                  //   "0.5 km Away",
                  //   style: Theme.of(context).textTheme.bodyText1,
                  // ),
                  // const SizedBox(height: 30),
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
                  text: "ACCEPT",
                  onPressed: () {
                    // Navigator.pushNamed(context, LastContainer3.routeName);
                  },
                  textStyle: Theme.of(context).primaryTextTheme.headline6.merge(
                      TextStyle(
                          color: darkblue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ),
                CustomButton(
                  horizontalPadding: 30,
                  verticalPadding: 10,
                  text: "CANCEL",
                  onPressed: () {
                    // Navigator.pushNamed(context, LastContainer4.routeName);
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
    );
  }
}
