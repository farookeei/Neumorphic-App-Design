import 'package:flutter/material.dart';
import 'package:todo_employee/screens/dashboard/widgets/add_btn.dart';

class CustomBottomNavbar extends StatelessWidget {
  final Widget child;
  CustomBottomNavbar({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 100,
        child: Row(
          children: [
            AddBtn(
              icon: Icons.home,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              width: 50,
            ),
            child
          ],
        ));
  }
}
