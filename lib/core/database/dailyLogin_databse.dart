import 'package:hive/hive.dart';
import 'package:todo_employee/core/models/daily_work_model.dart';

class DailyLoginDatabase {
  static const boxname = 'dailyLoginData';

  Future<void> addData(DailyLoginModel data) async {
    final _userBox = Hive.box(boxname);
    if (_userBox.isNotEmpty) _userBox.clear();
    await _userBox.add(data);
  }

  DailyLoginModel acessData() {
    final _userBox = Hive.box(boxname);
    if (_userBox.isEmpty) return null;
    return _userBox.getAt(0);
  }

  void deleteData() {
    final _userBox = Hive.box(boxname);
    _userBox.clear();
  }
}
