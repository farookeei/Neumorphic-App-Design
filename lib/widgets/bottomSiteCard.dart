import 'package:flutter/material.dart';

class BottomSiteCard extends StatelessWidget {
  const BottomSiteCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 80,
        child: Center(
          child: Text(
            'www.todoo.in',
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
