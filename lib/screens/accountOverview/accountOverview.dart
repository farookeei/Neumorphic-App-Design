import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:todo_employee/widgets/customBottomNavbar.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';
import 'package:todo_employee/widgets/outer_style.dart';

class AccountOverview extends StatelessWidget {
  static const routeName = "/account-overview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavbar(
        child: SizedBox(),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(height: 25),
            Center(
              child: Text("ACCOUNT OVERVIEW",
                  style: Theme.of(context).textTheme.headline6),
            ),
            const SizedBox(height: 15),
            Neumorphic(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              style: outerStyle(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "6,800.00₹",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        "Current Balance",
                        style: Theme.of(context).primaryTextTheme.bodyText1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/download.png",
                        scale: 1.8,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Salary Slip",
                        style: Theme.of(context).primaryTextTheme.bodyText2,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Neumorphic(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              style: outerContainerStyle(context, bouderRadius: 25),
              child: Text("REFER & EARN",
                  style: Theme.of(context).primaryTextTheme.bodyText1),
            )
          ],
        ),
      )),
    );
  }
}
