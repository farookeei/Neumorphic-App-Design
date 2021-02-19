import 'package:flutter/material.dart';
import 'package:todo_employee/screens/dashboard/widgets/add_btn.dart';

class AccountOverview extends StatelessWidget {
  const AccountOverview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AddBtn(
        icon: Icons.home,
        onTap: () {},
      ),
    );
  }
}
