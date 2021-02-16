import 'package:flutter/material.dart';

import '../themes.dart';

TextTheme primaryTextTheme() => TextTheme(
      headline5: TextStyle(
          fontFamily: 'Montserrat', color: ColorThemes.secoundaryColor),
      headline6: TextStyle(
          fontSize: 12,
          fontFamily: 'Montserrat',
          color: ColorThemes.secoundaryColor),
      bodyText1: TextStyle(
          fontFamily: 'Montserrat', color: ColorThemes.secoundaryColor),
      bodyText2: TextStyle(
          fontFamily: 'Montserrat', color: ColorThemes.secoundaryLightColor),
      caption: TextStyle(
          fontFamily: 'Montserrat', color: ColorThemes.secoundaryLightColor),
    );
