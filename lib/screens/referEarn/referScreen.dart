import 'package:flutter/material.dart';
import 'package:todo_employee/widgets/customBottomNavbar.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';

class ReferAndEarn extends StatelessWidget {
  const ReferAndEarn({Key key}) : super(key: key);

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
            const SizedBox(height: 40),
            Center(
              child: Text(
                "REFER & EARN",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: "REFERRAL CODE : Arj8893",
              onPressed: () {},
            )
          ],
        ),
      )),
    );
  }
}
