import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

NeumorphicStyle outerStyle(BuildContext context) {
  return NeumorphicStyle(
    shape: NeumorphicShape.flat,
    intensity: 1,
    depth: 5,
    color: Theme.of(context).primaryColor,
    boxShape:
        NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(8))),
  );
}
