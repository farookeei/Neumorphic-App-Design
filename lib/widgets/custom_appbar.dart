import 'package:flutter/material.dart';

import 'custom_back_btn.dart';

PreferredSize customAppBar() {
  return PreferredSize(
      preferredSize: Size.fromHeight(100.0), // here the desired height
      child: SafeArea(
        child: Row(
          children: [CustomBackButton()],
        ),
      ));
}
