import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/outer_style.dart';

class EarningBox extends StatelessWidget {
  const EarningBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: outerStyle(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 15),
            EarningItem(
              title: "EXPECTED EARNING",
              amount: "12,300",
            ),
            const SizedBox(height: 15),
            CustomDivider(),
            const SizedBox(height: 15),
            EarningItem(
              title: "MAXIMUM EARNING",
              amount: "14,700",
            )
          ],
        ),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            // color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      ),
    );
  }
}

class EarningItem extends StatelessWidget {
  final String title;
  final String amount;

  EarningItem({this.amount, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .merge(TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
        ),
        Text(
          "₹$amount",
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .merge(TextStyle(fontWeight: FontWeight.w600)),
        )
      ],
    );
  }
}
