import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/screens/homepage/widgets/top_container.dart';
import 'package:todo_employee/widgets/customBottomNavbar.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/outer_style.dart';

class CancellingWidget extends StatelessWidget {
  const CancellingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavbar(
        icon: Icons.call,
        onTap: () {},
        child: SizedBox(),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Container(
              // color: Colors.blue,
              height: 550,
              child: Stack(
                children: [
                  TopContainer(), //! for the 14th page ui

                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 30,
                    child: Neumorphic(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                      style: outerStyle(context),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              "Are you sure you want to cancel the service?",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            textStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .merge(TextStyle(fontWeight: FontWeight.w600)),
                            text: "Cancelled by customer",
                            onPressed: () {},
                            verticalPadding: 20,
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            textStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .merge(TextStyle(fontWeight: FontWeight.w600)),
                            text: "Cancelled by me",
                            onPressed: () {},
                            horizontalPadding: 70,
                            verticalPadding: 20,
                          ),
                          const SizedBox(height: 60),
                          CustomButton(
                            text: "CANCEL",
                            onPressed: () {},
                            textStyle: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .merge(TextStyle(fontWeight: FontWeight.w600)),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
