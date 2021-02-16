import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      padding: EdgeInsets.all(5),
      child: NeumorphicButton(
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(9)),
          depth: 10,
          shape: NeumorphicShape.flat,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () => Navigator.of(context).pop(),
        child: Icon(Icons.arrow_back_ios_outlined),
      ),
    );
  }
}
