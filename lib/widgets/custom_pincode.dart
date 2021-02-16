import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:todo_employee/core/themes/themes.dart';

import 'neumorphicStyle.dart';

class CustomPincode extends StatelessWidget {
  final double width;

  final Function(String val) onChanged;
  final Function(String _val) onComplete;

  CustomPincode({
    this.width,
    this.onChanged,
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Neumorphic(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 5, left: 20, right: 20),
        style: neumorphicInStyle(context),
        child: PinCodeTextField(
          onCompleted: onComplete,
          appContext: context,
          length: 6,
          obscureText: false,
          obscuringCharacter: '*',
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            inactiveColor: ColorThemes.pinColor,
            disabledColor: ColorThemes.pinColor,
            activeColor: ColorThemes.pinColor,
            inactiveFillColor: ColorThemes.pinColor,
            shape: PinCodeFieldShape.underline,
            fieldHeight: 35,
            fieldWidth: 35,
            selectedColor: ColorThemes.pinColor,
            selectedFillColor: ColorThemes.pinColor,
            activeFillColor: ColorThemes.pinColor,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          cursorColor: Theme.of(context).primaryColor,
          textStyle: Theme.of(context).primaryTextTheme.bodyText2,
          keyboardType: TextInputType.number,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
