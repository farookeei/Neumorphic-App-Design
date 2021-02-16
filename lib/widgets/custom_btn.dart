import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Function onPressed;
  CustomButton({
    @required this.text,
    this.textStyle,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
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
