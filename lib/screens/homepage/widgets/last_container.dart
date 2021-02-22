import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:todo_employee/core/providers/attendance_provider.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/widgets/cstm_divider.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_round_btn.dart';
import 'package:todo_employee/widgets/inner_style.dart';
import 'package:todo_employee/widgets/outerContainerstyle.dart';

import 'package:todo_employee/widgets/sideDividers.dart';

class LastContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Consumer<AttndanceProvider>(
      builder: (ctx, _attendanceProvider, _) => Stack(
        overflow: Overflow.visible,
        children: [
          Neumorphic(
            style: outerContainerStyle(context, bouderRadius: 16),
            child: Container(
              padding: EdgeInsets.all(3),
              child: Neumorphic(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                style: innerStyle(context, borderRadius: 16),
                child: _attendanceProvider
                        .attendanceData[_attendanceProvider.questionIndex]
                    ['questions'],
              ),
            ),
          ),
          Positioned(
            bottom: -15,
            child: Container(
              width: screenwidth - 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  CustomButton(
                    horizontalPadding: 10,
                    verticalPadding: 10,
                    text: _attendanceProvider
                            .attendanceData[_attendanceProvider.questionIndex]
                        ['okBtn']['text'],
                    onPressed: () {
                      Provider.of<AttndanceProvider>(context, listen: false)
                          .cardChanger(_attendanceProvider.attendanceData[
                                  _attendanceProvider.questionIndex]['okBtn']
                              ['onPressed']);
                    },
                    textStyle: Theme.of(context)
                        .primaryTextTheme
                        .headline6
                        .merge(TextStyle(
                            color: darkblue,
                            fontWeight: FontWeight.bold,
                            fontSize: 12)),
                  ),
                  CustomButton(
                    horizontalPadding: 10,
                    verticalPadding: 10,
                    text: _attendanceProvider
                            .attendanceData[_attendanceProvider.questionIndex]
                        ['cancelBtn']['text'],
                    onPressed: () {
                      Provider.of<AttndanceProvider>(context, listen: false)
                          .cardChanger(_attendanceProvider.attendanceData[
                                  _attendanceProvider.questionIndex]
                              ['cancelBtn']['onPressed']);
                    },
                    textStyle: Theme.of(context)
                        .primaryTextTheme
                        .headline6
                        .merge(TextStyle(color: lightblue, fontSize: 12)),
                  ),
                  const SizedBox(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DefaultCard extends StatelessWidget {
  String _initialDate = '';
  String _time = '';
  final String body;
  final bool initail;
  DefaultCard({this.body = '', this.initail = false});

  void insitalDate() {
    final todayDate = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    _initialDate = formatter.format(todayDate);
    final f = new DateFormat('yyyy-MM-dd hh:mm');
    _time = f.format(todayDate).split(' ').last;
    _initialDate = _initialDate + ' \n$_time';
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    insitalDate();
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _initialDate,
                style: Theme.of(context).primaryTextTheme.caption.merge(
                    TextStyle(color: Color.fromRGBO(77, 153, 249, 0.52))),
              ),
              SideDividers(screenWidth: screenwidth),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: CustomRoundBtn(
                  onPressed: () {},
                  title: "26 °C",
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(initail ? 'Will you Login at $_time ?' : body,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .merge(TextStyle(fontWeight: FontWeight.w600))),
          const SizedBox(height: 20),
          CustomDivider(startspace: 130),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
