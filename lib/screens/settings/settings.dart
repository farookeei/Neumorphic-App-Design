import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/customBottomNavbar.dart';
import 'package:todo_employee/widgets/custom_appbar.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/outer_style.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = "/settings";

  @override
  Widget build(BuildContext context) {
    Widget _buildStars(int ratings) {
      String stars = "";

      stars += "⭐";
      return Neumorphic(
          margin: const EdgeInsets.only(right: 8),
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.circle(),
            depth: 10,
            color: Theme.of(context).primaryColor,
          ),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(stars),
          ));
    }

    return Scaffold(
      bottomNavigationBar: CustomBottomNavbar(
        child: SizedBox(),
      ),
      appBar: customAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "SETTINGS",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(width: 50),
                CircleAvatar(
                  radius: 30,
                  child: Image.asset("assets/images/Outline.png"),
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      "Harry Thomas",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .merge(TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "#1234567",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        _buildStars(5),
                        _buildStars(5),
                        _buildStars(5),
                        _buildStars(5),
                        _buildStars(5),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            CustomDivider(),
            const SizedBox(height: 20),
            Text(
              "Personal Information",
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 15),
            Text(
              "Registered number: +91 9946889909",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 5),
            Text(
              "Contact address: Mackal House.O Pampady,Kottayam",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 20),
            //! contact information

            Text(
              "Contact  Information",
              style: Theme.of(context).textTheme.headline6,
            ),
            CustomRichText(
              leftfield: "Alternate number:",
              rightfield: "+91 9946889909",
            ),
            const SizedBox(height: 5),
            CustomRichText(
              leftfield: "Emergency contact:",
              rightfield: "+91 9946889909",
            ),
            const SizedBox(height: 5),
            CustomRichText(
              leftfield: "Emergency number:",
              rightfield: "+91 9946889909",
            ),
            const SizedBox(height: 5),
            CustomRichText(
              leftfield: "Working hours:",
              rightfield: "5 hours",
            ),
            const SizedBox(height: 5),
          ],
        ),
      )),
    );
  }
}

class CustomRichText extends StatelessWidget {
  final String leftfield;
  final String rightfield;
  CustomRichText({this.leftfield, this.rightfield});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: leftfield,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TextSpan(
            text: "\t $rightfield",
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
