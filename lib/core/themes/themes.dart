import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/textThemes/primaryTextTheme.dart';
import 'package:todo_employee/core/themes/textThemes/textTheme.dart';

import 'appBarTheme.dart';

class ColorThemes {
  static const Color primaryColor = Color(0xffEAEBF3);
  static const Color accentColor = Color(0xffFFAF37);
  static const Color secoundaryColor = Color(0xff7C8695);
  static const Color darkColor = Color(0xff193C40);
  static const Color secoundaryLightColor = Color.fromRGBO(172, 172, 172, 1);
  static const Color pinColor = Color(0x208D8D8E);
}

Color darkblue = Color.fromRGBO(85, 157, 249, 1);
Color lightblue = Color.fromRGBO(77, 153, 249, 1);
Color dividerColor = Color.fromRGBO(234, 235, 243, 1); //! home page

ThemeData themes() {
  return ThemeData(
    primaryColor: ColorThemes.primaryColor,
    accentColor: ColorThemes.accentColor,
    textTheme: textTheme(),
    primaryTextTheme: primaryTextTheme(),
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor: ColorThemes.primaryColor,
    iconTheme: IconThemeData(color: ColorThemes.secoundaryLightColor, size: 15),
  );
}
