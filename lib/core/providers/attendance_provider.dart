import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_employee/screens/homepage/widgets/last_container.dart';

class AttndanceProvider with ChangeNotifier {
  String _initialDate = '';
  String _time = '';
  int questionIndex = 0;

  List<Map<String, dynamic>> attendanceData = [
    {
      'questions': DefaultCard(initail: true),
      'okBtn': {
        'text': 'Yes, I will.',
        'onPressed': {'index': 2, 'type': true}
      },
      'cancelBtn': {
        'text': 'No, I\'m on leave',
        'onPressed': {'index': 1, 'type': false}
      },
    },
    {
      'questions': DefaultCard(body: 'Take leave?'),
      'okBtn': {'text': 'Yes.', 'onPressed': null},
      'cancelBtn': {'text': 'No,', 'onPressed': 0},
    },
    {
      'questions': DefaultCard(body: 'Login before 45:00 1 Km Away'),
      'okBtn': {'text': 'Accept', 'onPressed': null},
      'cancelBtn': {'text': 'Cancel', 'onPressed': 0},
    }
  ];

  void initalDate() {
    final todayDate = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    _initialDate = formatter.format(todayDate);
    final f = new DateFormat('yyyy-MM-dd hh:mm');
    _time = f.format(todayDate).split(' ').last;
    _initialDate = _initialDate + ' \n$_time';
  }

  void cardChanger(Map index) {
    // switch (questionIndex) {
    //  case 1:
    ////    break;
    ///
    //   default:
    //  }
    if (index == null) return null;
    questionIndex = index['index'];
    notifyListeners();
  }
}
