import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';

class CustomRoundBtn extends StatelessWidget {
  final String title;
  final Function onPressed;

  CustomRoundBtn({this.onPressed, this.title});

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.circle(),
        depth: 10,
        shape: NeumorphicShape.concave,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          title,
          style: TextStyle(color: lightblue),
        ),
      ),
    );
  }
}
