import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/widgets/outer_style.dart';

class ServiceRequestScreen extends StatelessWidget {
  const ServiceRequestScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Text(
                "SERVICE REQUEST",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const SizedBox(height: 20),
            Neumorphic(
              padding: const EdgeInsets.all(12),
              style: outerStyle(context),
              child: GestureDetector(
                child: Image.asset(
                  "assets/images/Outline.png",
                  scale: 0.8,
                ),
              ),
            ),
            Neumorphic(
              padding: const EdgeInsets.all(12),
              style: outerStyle(context),
              child: GestureDetector(
                child: Image.asset(
                  "assets/images/uniform.png",
                  scale: 0.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
