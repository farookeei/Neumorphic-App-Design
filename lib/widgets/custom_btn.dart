import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Function onPressed;
  final double horizontalPadding;
  final double verticalPadding;

  CustomButton(
      {@required this.text,
      this.textStyle,
      this.onPressed,
      this.horizontalPadding = 50,
      this.verticalPadding = 10});
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
        depth: 10,
        shape: NeumorphicShape.flat,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: onPressed,
      child: Text(text, style: textStyle),
    );
  }
}
