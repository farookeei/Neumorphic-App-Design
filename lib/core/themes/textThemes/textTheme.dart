import 'package:flutter/material.dart';

import 'package:todo_employee/core/themes/themes.dart';

TextTheme textTheme() => TextTheme(
      headline5: TextStyle(
          fontFamily: 'Montserrat',
          color: ColorThemes.darkColor,
          fontWeight: FontWeight.w600),
      headline6: TextStyle(
          fontFamily: 'Montserrat',
          color: ColorThemes.darkColor,
          fontWeight: FontWeight.bold),
      bodyText1:
          TextStyle(fontFamily: 'Montserrat', color: ColorThemes.darkColor),
      bodyText2: TextStyle(
          fontFamily: 'Montserrat',
          color: ColorThemes.darkColor,
          fontWeight: FontWeight.w500),
    );
