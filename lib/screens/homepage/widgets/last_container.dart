import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/inner_style.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';

import 'package:todo_employee/widgets/sideDividers.dart';

class LastContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String loginBefore;

    List<String> yes = [
      "Will you Login at 6 :45 AM ?",
      "Login before $loginBefore 1Km Away",
      "Preparing your Schedule,Please wait"
    ];

    List<String> no = [
      "Take Leave",
    ];
    final screenwidth = MediaQuery.of(context).size.width;
    return Stack(
      overflow: Overflow.visible,
      children: [
        Neumorphic(
          style: outerContainerStyle(context, bouderRadius: 16),
          child: Container(
            padding: EdgeInsets.all(3),
            child: Neumorphic(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                style: innerStyle(context, borderRadius: 16),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "02 Sep 2020 \n06:00 AM ",
                            style: Theme.of(context)
                                .primaryTextTheme
                                .caption
                                .merge(TextStyle(
                                    color: Color.fromRGBO(77, 153, 249, 0.52))),
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
                      Text("Will you Login at 6:45 AM ?",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .merge(TextStyle(fontWeight: FontWeight.w600))),
                      const SizedBox(height: 20),
                      CustomDivider(startspace: 130),
                      const SizedBox(height: 30),
                    ],
                  ),
                )),
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
                  horizontalPadding: 10,
                  verticalPadding: 10,
                  text: "Yes I will",
                  onPressed: () {},
                  textStyle: Theme.of(context).primaryTextTheme.headline6.merge(
                      TextStyle(
                          color: darkblue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ),
                CustomButton(
                  horizontalPadding: 10,
                  verticalPadding: 10,
                  text: "No I am on leave",
                  onPressed: () {},
                  textStyle: Theme.of(context)
                      .primaryTextTheme
                      .headline6
                      .merge(TextStyle(color: lightblue, fontSize: 12)),
                ),
                const SizedBox(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
