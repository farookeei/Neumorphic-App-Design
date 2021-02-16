import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double endspace;
  final double startspace;
  CustomDivider({this.endspace = 20, this.startspace = 20});
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      color: Colors.grey[30],
      endIndent: endspace,
      indent: startspace,
    );
  }
}
