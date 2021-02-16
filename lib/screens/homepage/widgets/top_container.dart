import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:todo_employee/core/models/user_model.dart';
import 'package:todo_employee/core/providers/auth_provider.dart';

// ignore: must_be_immutable
class TopContainer extends StatelessWidget {
  UserModel _userData;

  @override
  Widget build(BuildContext context) {
    _userData = Provider.of<AuthProvider>(context, listen: false).userData;
    // acessData(context);
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 180,
              width: 180,
              child: Image.asset('assets/images/home.png'),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Good morning \n${_userData.firstName}',
                  style: Theme.of(context).textTheme.headline5,
                ),

                const SizedBox(height: 10),
                // Row(
                //   children: [
                //     Container(
                //       width: screenWidth * 0.7,
                //       child: Neumorphic(
                //         style: outerStyle(context),
                //         child: Padding(
                //           padding: const EdgeInsets.all(3.0),
                //           child: Neumorphic(
                //             style: innerStyle(context),
                //             child: Padding(
                //               padding: const EdgeInsets.all(10.0),
                //               child: Text(
                //                 'Anything I can help you with?',
                //                 style: Theme.of(context)
                //                     .primaryTextTheme
                //                     .bodyText1
                //                     .merge(TextStyle(
                //                         fontSize: 12,
                //                         fontWeight: FontWeight.w600)),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //     const SizedBox(width: 10),
                //     Container(
                //       child: Neumorphic(
                //         style: outerStyle(context),
                //         child: Padding(
                //           padding: const EdgeInsets.all(3.0),
                //           child: Padding(
                //               padding: const EdgeInsets.all(6.0),
                //               child: IconButton(
                //                 padding: EdgeInsets.zero,
                //                 constraints: BoxConstraints(),
                //                 icon: Icon(
                //                   Icons.send,
                //                   color: Theme.of(context).accentColor,
                //                 ),
                //                 onPressed: () {},
                //               )),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
