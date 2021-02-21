import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/screens/allscreen.dart';
import 'package:todo_employee/widgets/customBottomNavbar.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/outer_style.dart';

class ServiceRequestScreen extends StatelessWidget {
  const ServiceRequestScreen({Key key}) : super(key: key);
  static const routeName = "/request";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavbar(
        child: CustomButton(
          verticalPadding: 15,
          text: "REQUEST",
          onPressed: () {
            Navigator.pushNamed(context, ReferAndEarn.routeName);
          },
          textStyle: TextStyle(color: lightblue, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
              Container(
                height: 400,
                child: GridView(
                  padding: const EdgeInsets.only(top: 10),
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 3 / 3,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 20,
                  ),
                  children: [
                    CustomItems(
                      imageUrl: "assets/images/Outline.png",
                      title: "Floor Cleaning Lotion",
                    ),
                    CustomItems(
                      imageUrl: "assets/images/liquid-soap.png",
                      title: "Floor Cleaning Lotion",
                    ),
                    CustomItems(
                      imageUrl: "assets/images/mask.png",
                      title: "Floor Cleaning Lotion",
                    ),
                    CustomItems(
                      imageUrl: "assets/images/bleach.png",
                      title: "Floor Cleaning Lotion",
                    ),
                    CustomItems(
                      imageUrl: "assets/images/gloves.png",
                      title: "Floor Cleaning Lotion",
                    ),
                    CustomItems(
                      imageUrl: "assets/images/rinse.png",
                      title: "Floor Cleaning Lotion",
                    ),
                    CustomItems(
                      imageUrl: "assets/images/uniform.png",
                      title: "Floor Cleaning Lotion",
                    ),
                    CustomItems(
                      imageUrl: "assets/images/loader.png",
                      title: "Floor Cleaning Lotion",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomItems extends StatelessWidget {
  final String title;
  final String imageUrl;

  CustomItems({this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Neumorphic(
              padding: const EdgeInsets.all(12),
              style: outerStyle(context),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                child: Image.asset(
                  imageUrl,
                  scale: 2.6,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}

// class RequestBox extends StatelessWidget {
//   final String imageUrl;
//   RequestBox({this.imageUrl = "assets/images/Outline.png"});
//   @override
//   Widget build(BuildContext context) {
//     final screenwidth = MediaQuery.of(context).size.width;
//     return Stack(
//       overflow: Overflow.visible,
//       children: [
//         Neumorphic(
//           style: outerContainerStyle(context),
//           child: Container(
//             width: double.infinity,
//             height: 200,
//             child: Neumorphic(
//                 style: innerStyle(context),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     const SizedBox(height: 18),
//                     Image.asset(
//                       imageUrl,
//                       scale: 1.5,
//                     ),
//                     const SizedBox(height: 18),
//                     Center(
//                       child: Text(
//                         "Request for Uniform?",
//                         style: Theme.of(context).textTheme.headline6,
//                       ),
//                     ),
//                     const SizedBox(height: 18),
//                     CustomDivider(
//                       startspace: screenwidth - 300,
//                     )
//                   ],
//                 )),
//           ),
//         ),
//         Positioned(
//           bottom: -15,
//           child: Container(
//             width: screenwidth - 50,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const SizedBox(),
//                 CustomButton(
//                   horizontalPadding: 10,
//                   verticalPadding: 10,
//                   text: "Yes I will",
//                   onPressed: () {},
//                   textStyle: Theme.of(context).primaryTextTheme.headline6.merge(
//                       TextStyle(
//                           color: darkblue,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12)),
//                 ),
//                 CustomButton(
//                   horizontalPadding: 10,
//                   verticalPadding: 10,
//                   text: "No I am on leave",
//                   onPressed: () {},
//                   textStyle: Theme.of(context)
//                       .primaryTextTheme
//                       .headline6
//                       .merge(TextStyle(color: lightblue, fontSize: 12)),
//                 ),
//                 const SizedBox(),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
