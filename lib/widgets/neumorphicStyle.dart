import 'package:flutter_neumorphic/flutter_neumorphic.dart';

NeumorphicStyle neumorphicInStyle(BuildContext context) {
  return NeumorphicStyle(
    depth: -10,
    color: Theme.of(context).primaryColor,
    shadowLightColorEmboss: Colors.white,
    shape: NeumorphicShape.concave,
    intensity: 0.8,
  );
}

NeumorphicStyle neumorphicOutStyle(BuildContext context) {
  return NeumorphicStyle(
    depth: 10,
    color: Theme.of(context).primaryColor,
    shadowLightColorEmboss: Colors.white,
    shape: NeumorphicShape.concave,
    intensity: 0.8,
  );
}
