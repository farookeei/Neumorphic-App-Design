import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

NeumorphicStyle innerStyle(BuildContext context, {double borderRadius = 8}) {
  return NeumorphicStyle(
    shape: NeumorphicShape.flat,
    depth: -4, //-15
    intensity: 1,
    color: Theme.of(context).primaryColor,
    boxShape: NeumorphicBoxShape.roundRect(
        BorderRadius.all(Radius.circular(borderRadius))),
  );
}
