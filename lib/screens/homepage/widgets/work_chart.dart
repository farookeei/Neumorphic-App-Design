import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/outer_style.dart';
import 'package:todo_employee/widgets/sideDividers.dart';

class WorkChart extends StatelessWidget {
  const WorkChart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Neumorphic(
      style: outerStyle(context),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "TODAYS WORK CHART",
            style: Theme.of(context)
                .primaryTextTheme
                .bodyText2
                .merge(TextStyle(fontSize: 12)),
          ),
          const SizedBox(height: 10),
          CustomDivider(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "LOGIN ",
                      style: Theme.of(context).primaryTextTheme.bodyText2.merge(
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                    ),
                    TextSpan(
                        text: "08:30 AM",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .merge(TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: "LOGOUT ",
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyText2
                            .merge(TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500))),
                    TextSpan(
                      text: "08:30 AM",
                      style: Theme.of(context).primaryTextTheme.headline6.merge(
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffBCBCBE),
                            ),
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDotWidget(),
              Stack(
                children: [
                  Container(
                      height: 3,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      width: screenWidth * 0.5,
                      child: Text("")),
                  Container(
                    height: 3,
                    width: screenWidth * 0.4,
                    color: Colors.blue,
                    child: Text(""),
                  ),
                ],
              ),
              CustomDotWidget(),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "FINISHED TASK : 07/10",
            style: Theme.of(context).primaryTextTheme.caption
          ),
          const SizedBox(height: 15),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SideDividers(screenWidth: screenWidth),
              Text(
                "LUNCH BREAK :01:00 PM - 01:40 PM",
                style: Theme.of(context).primaryTextTheme.caption,
              ),
              const SizedBox(width: 10),
              CustomDotWidget()
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "TEA BREAK :01:00 PM - 01:40 PM",
                style: Theme.of(context).primaryTextTheme.caption
              ),
              SideDividers(
                screenWidth: screenWidth,
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class CustomDotWidget extends StatelessWidget {
  const CustomDotWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.circle(),
          shape: NeumorphicShape.flat,
          depth: 10,
          intensity: 1),
      child: CircleAvatar(
        radius: 15,
        backgroundColor: Theme.of(context).primaryColor,
        child: CircleAvatar(
          radius: 5,
          backgroundColor: Color.fromRGBO(0, 153, 255, 1),
        ),
      ),
    );
  }
}
