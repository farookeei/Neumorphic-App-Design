import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/screens/homepage/lastContainerwidgets/last3.dart';
import 'package:todo_employee/screens/homepage/widgets/last_container.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/inner_style.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';
import 'package:todo_employee/widgets/sideDividers.dart';

class LastContainer2 extends StatelessWidget {
  static const routeName = "/last2";

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Stack(
      overflow: Overflow.visible,
      children: [
        Neumorphic(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
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
                      style: Theme.of(context).primaryTextTheme.caption.merge(
                          TextStyle(color: Color.fromRGBO(77, 153, 249, 0.52))),
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
                Text('Take leave',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .merge(TextStyle(fontWeight: FontWeight.w600))),
                const SizedBox(height: 20),
                CustomDivider(startspace: 130),
                const SizedBox(height: 30),
              ],
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
                  text: "Yes",
                  onPressed: () {
                    Navigator.pushNamed(context, LastContainer3.routeName);
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
                  text: "No",
                  onPressed: () {
                    Navigator.pushNamed(context, LastContainer.routeName);
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
