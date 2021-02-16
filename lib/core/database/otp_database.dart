import 'package:hive/hive.dart';
import 'package:todo_employee/core/models/otp_model.dart';

class OTPDatabase {
  static const boxname = 'otpData';

  Future<void> addData(OTPModel data) async {
    final _userBox = Hive.box(boxname);
    if (_userBox.isNotEmpty) _userBox.clear();
    await _userBox.add(data);
  }

  OTPModel acessData() {
    final _userBox = Hive.box(boxname);
    if (_userBox.isEmpty) return null;
    return _userBox.getAt(0);
  }

  void deleteData() {
    final _userBox = Hive.box(boxname);
    _userBox.clear();
  }
}
