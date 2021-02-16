import 'package:flutter/material.dart';
import 'package:todo_employee/core/themes/themes.dart';

import 'cstm_divider.dart';

class SideDividers extends StatelessWidget {
  const SideDividers({
    Key key,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: dividerColor, width: screenWidth * 0.25, child: CustomDivider());
  }
}
