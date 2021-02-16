import 'package:flutter/material.dart';

import 'package:todo_employee/core/themes/themes.dart';

TextTheme textTheme() => TextTheme(
      headline5: TextStyle(
          fontFamily: 'Montserrat',
          color: ColorThemes.darkColor,
          fontWeight: FontWeight.w600),
      headline6: TextStyle(
          fontSize: 13, fontFamily: 'Montserrat', color: ColorThemes.darkColor),
      bodyText1:
          TextStyle(fontFamily: 'Montserrat', color: ColorThemes.darkColor),
    );
