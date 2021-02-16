import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/inner_style.dart';

import 'package:todo_employee/widgets/sideDividers.dart';

class LastContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Neumorphic(
      style: outerContainerStyle(context),
      child: Neumorphic(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          style: innerStyle(context),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "02 Sep 2020 \n06:00 AM ",
                    style: Theme.of(context).primaryTextTheme.headline6.merge(
                        TextStyle(color: Color.fromRGBO(77, 153, 249, 0.52))),
                  ),
                  SideDividers(screenWidth: screenwidth),
                  CustomRoundBtn(
                    onPressed: () {},
                    title: "26 °C",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text("Will you Login at 6:45 AM ?",
                  style: Theme.of(context).primaryTextTheme.headline5),
              const SizedBox(height: 20),
              CustomDivider(
                startspace: 130,
              ),
              const SizedBox(height: 30),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        text: "Yes I will",
                        onPressed: () {},
                        textStyle: Theme.of(context)
                            .primaryTextTheme
                            .headline6
                            .merge(TextStyle(
                                color: darkblue, fontWeight: FontWeight.bold)),
                      ),
                      CustomButton(
                        text: "No I am on leave",
                        onPressed: () {},
                        textStyle: Theme.of(context)
                            .primaryTextTheme
                            .headline6
                            .merge(TextStyle(color: lightblue)),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}

NeumorphicStyle outerContainerStyle(BuildContext context) {
  return NeumorphicStyle(
    shape: NeumorphicShape.flat,
    depth: 4, //-15
    intensity: 1,
    color: Theme.of(context).primaryColor,
    boxShape:
        NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(8))),
  );
}
