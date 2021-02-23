import 'package:flutter/material.dart';
import 'package:todo_employee/screens/dashboard/widgets/add_btn.dart';

class CustomBottomNavbar extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final Widget child;
  CustomBottomNavbar({this.child, this.icon = Icons.home, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 100,
        child: Row(
          children: [
            AddBtn(icon: icon, onTap: onTap),
            const SizedBox(
              width: 50,
            ),
            child
          ],
        ));
  }
}
