import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AddBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        child: Neumorphic(
          style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.circle(),
              shape: NeumorphicShape.flat,
              depth: 10,
              intensity: 1),
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Theme.of(context).primaryColor,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color.fromRGBO(0, 153, 255, 1),
              child: Icon(
                Icons.call,
                color: Theme.of(context).primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
