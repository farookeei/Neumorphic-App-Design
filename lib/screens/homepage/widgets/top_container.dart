import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:todo_employee/core/models/user_model.dart';
import 'package:todo_employee/core/providers/auth_provider.dart';

// ignore: must_be_immutable
class TopContainer extends StatelessWidget {
  UserModel _userData;

  @override
  Widget build(BuildContext context) {
    _userData = Provider.of<AuthProvider>(context, listen: false).userData;
    // acessData(context);
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 180,
              width: 180,
              child: Image.asset('assets/images/home.png'),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Good morning \n${"_userData.firstName"}',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
