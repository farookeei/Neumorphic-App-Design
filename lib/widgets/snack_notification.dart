import 'package:flutter/material.dart';

void snakBarNotification(
    {@required String notification,
    @required GlobalKey<ScaffoldState> scaffoldkey}) {
  scaffoldkey.currentState.showSnackBar(SnackBar(
    content: Text(notification),
    duration: Duration(seconds: 3),
  ));
}
