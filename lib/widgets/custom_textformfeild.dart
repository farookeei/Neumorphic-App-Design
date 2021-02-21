import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/widgets/inner_style.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';

import 'neumorphicStyle.dart';

class CustomTextFormFeild extends StatelessWidget {
  final double width;
  final String hintText;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final TextStyle textStyle;
  final String Function(String val) validators;
  final Function(String val) onSaved;
  final TextAlign textAlign;
  final Iterable<String> autoFillHints;
  final Function(String val) onFieldSubmitted;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final Function onEditingComplete;

  CustomTextFormFeild({
    this.width,
    this.hintText,
    this.keyboardType,
    this.inputFormatters,
    this.textStyle,
    this.validators,
    this.onSaved,
    this.autoFillHints,
    this.textAlign = TextAlign.center,
    this.onFieldSubmitted,
    this.focusNode,
    this.textInputAction,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Neumorphic(
        style: outerContainerStyle(context, bouderRadius: 15),
        child: Neumorphic(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.symmetric(horizontal: 5),
          style: innerStyle(context, borderRadius: 15),
          child: TextFormField(
            focusNode: focusNode,
            autofillHints: autoFillHints,
            validator: validators,
            onSaved: onSaved,
            textAlign: textAlign,
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            style: textStyle,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: textStyle,
            ),
            onFieldSubmitted: onFieldSubmitted,
            textInputAction: textInputAction,
            onEditingComplete: onEditingComplete,
          ),
        ),
      ),
    );
  }
}
