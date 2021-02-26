import 'package:flutter/material.dart';
import 'package:todo_employee/core/database/dailyLogin_databse.dart';
import 'package:todo_employee/core/models/daily_work_model.dart';
import 'package:todo_employee/core/models/user_model.dart';
import 'package:todo_employee/core/services/dependecyInjection.dart';
import 'package:todo_employee/core/services/dio_serices_API.dart';

class DailyLoginProvider with ChangeNotifier {
  DioAPIServices _dioAPIServices = locator<DioAPIServices>();
  DailyLoginDatabase _dailyLogindatabase = locator<DailyLoginDatabase>();
  UserModel _userData;

  bool login = true;
  bool loginstatus = false;
  DailyLoginModel _dailyLoginData;

  DailyLoginProvider(this._userData);

  Future<void> _dailyLoginDataSave(DailyLoginModel data) async {
    await _dailyLogindatabase.addData(data);
  }

  Future<void> dailyLoginRequest() async {
    Map _body = {
      "login": true,
    };
    loginstatus = false;
    try {
      print(_userData.token);
      final _fetchData = await _dioAPIServices.postAPI(
          url: 'employee/daily/login',
          authorization: _userData.token,
          body: _body);
      print(_fetchData);
      if (_fetchData['status'] == 'success') loginstatus = true;
      print("object");
      _dailyLoginData = DailyLoginModel.convert(_fetchData['data']);

      _dailyLoginDataSave(_dailyLoginData);
    } catch (e) {
      throw e;
    }
  }
}
