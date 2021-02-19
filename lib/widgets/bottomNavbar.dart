import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/screens/accountOverview/accountOverview.dart';
import 'package:todo_employee/screens/dashboard/widgets/add_btn.dart';
import 'package:todo_employee/screens/service_request/serviceRequestScreen.dart';
import 'package:todo_employee/screens/settings/settings.dart';
import 'package:todo_employee/widgets/outer_style.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 70,
        child: Stack(
          overflow: Overflow.clip,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: 15),
                height: 41,
                width: screenWidth * 0.88,
                child: Neumorphic(
                  style: outerStyle(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: EdgeInsets.all(8), child: const SizedBox()),
                      Container(
                          padding: EdgeInsets.all(8),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ServiceRequestScreen.routeName);
                              },
                              child: Image.asset('assets/images/history.png'))),
                      Container(
                          padding: EdgeInsets.all(8),
                          child: GestureDetector(
                              onTap: () {
                                // Navigator.pushNamed(
                                //     context, AccountOverview.routeName);
                              },
                              child: Image.asset('assets/images/wallet.png'))),
                      Container(
                          padding: EdgeInsets.all(8),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, SettingsScreen.routeName);
                            },
                            child: Image.asset(
                                'assets/images/customer-support.png'),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            AddBtn(
              icon: Icons.add,
              onTap: () {},
            ),
          ],
        ));
  }
}
