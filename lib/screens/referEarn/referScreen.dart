import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/widgets/customBottomNavbar.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/custom_textformfeild.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';
import 'package:todo_employee/widgets/outer_style.dart';

class ReferAndEarn extends StatelessWidget {
  static const routeName = "/referEarn";

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
            ),
            const SizedBox(height: 20),
            Neumorphic(
              style: outerStyle(context),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\t\t\t\t\t\tName",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                    const SizedBox(height: 10),
                    Neumorphic(
                      style: outerContainerStyle(context, bouderRadius: 5),
                      child: CustomTextFormFeild(
                        // validators: _validators.nameValidator,
                        textAlign: TextAlign.left,
                        textStyle: Theme.of(context)
                            .primaryTextTheme
                            .bodyText2
                            .merge(TextStyle(fontWeight: FontWeight.w500)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "\t\t\t\t\t\Contact Number",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                    const SizedBox(height: 10),
                    Neumorphic(
                      style: outerContainerStyle(context, bouderRadius: 5),
                      child: CustomTextFormFeild(
                        // validators: _validators.nameValidator,
                        textAlign: TextAlign.left,
                        textStyle: Theme.of(context)
                            .primaryTextTheme
                            .bodyText2
                            .merge(TextStyle(fontWeight: FontWeight.w500)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "\t\t\t\t\t\Aadhar number",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                    const SizedBox(height: 10),
                    Neumorphic(
                      style: outerContainerStyle(context, bouderRadius: 5),
                      child: CustomTextFormFeild(
                        // validators: _validators.nameValidator,
                        textAlign: TextAlign.left,
                        textStyle: Theme.of(context)
                            .primaryTextTheme
                            .bodyText2
                            .merge(TextStyle(fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                )),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              verticalPadding: 15,
              text: "SUBMIT",
              onPressed: () {},
            )
          ],
        ),
      )),
    );
  }
}
