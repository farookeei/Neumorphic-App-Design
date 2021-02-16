import 'package:flutter/material.dart';
import 'package:todo_employee/core/database/otp_database.dart';
import 'package:todo_employee/core/database/user_database.dart';
import 'package:todo_employee/core/models/otp_model.dart';
import 'package:todo_employee/core/models/user_model.dart';
import 'package:todo_employee/core/services/dependecyInjection.dart';
import 'package:todo_employee/core/services/dio_serices_API.dart';

class AuthProvider with ChangeNotifier {
  DioAPIServices _dioAPIServices = locator<DioAPIServices>();
  OTPModel _otpData;
  OTPDatabase _otpDatabase = locator<OTPDatabase>();
  UserDatabase _userDatabase = locator<UserDatabase>();
  bool _isPerviousUser = false;
  UserModel _userData;
  bool _otpVerificationStatus = false;
  String employeeID;

  bool get isOTPWorked => _otpData == null
      ? false
      : _otpData.reqID == null
          ? false
          : _otpData.reqID.isEmpty
              ? false
              : true;

  bool get isUserAuthTOHome => _userData == null
      ? false
      : _userData.token == null
          ? false
          : _userData.token.isEmpty
              ? false
              : true;

  OTPModel get otpData => _otpData;

  bool get isPerviousUser => _isPerviousUser;

  bool get otpVerificationStatus => _otpVerificationStatus;

  UserModel get userData => _userData;

  void acessOTPData() {
    OTPModel _temp = _otpDatabase.acessData();
    if (_temp != null) {
      _otpData = _temp;
    }
  }

  void acessUserData() {
    UserModel _temp = _userDatabase.acessData();
    if (_temp != null) {
      _userData = _temp;
    }
  }

  Future<void> _otpDataSave(OTPModel data) async {
    await _otpDatabase.addData(data);
  }

  Future<void> _userDataSave(UserModel data) async {
    _userDatabase.addData(data);
  }

  Future<void> otpSend(
      {@required String mobNumber, @required String employeeId}) async {
    Map _body = {
      'phone_number': mobNumber,
      "country_code": '91',
      'employee_id': employeeId
    };
    employeeID = employeeId;
    try {
      print("before fetching");
      final _fetchData =
          await _dioAPIServices.postAPI(url: "auth/login", body: _body);
      print("after fetching");
      _otpData = OTPModel(
          mobileNumber: mobNumber, reqID: _fetchData['data']['request_id']);
    } catch (e) {
      print(e);
      throw e;
    }
    // notifyListeners();
  }

  Future<void> verifyOTP({@required String otp}) async {
    Map _body = {
      'phone_number': _otpData.mobileNumber,
      'country_code': _otpData.countryCode,
      'otp': otp,
      'otp_request_id': _otpData.reqID,
      "employee_id": employeeID,
    };

    _otpVerificationStatus = false;
    _isPerviousUser = false;

    try {
      final _fetchData =
          await _dioAPIServices.postAPI(url: 'auth/otp/verify', body: _body);

      if (_fetchData['status'] == 'success') _otpVerificationStatus = true;
      //*  to save data
      if (_fetchData['data']['is_account']) _isPerviousUser = true;

      _otpDataSave(_otpData);

      if (_isPerviousUser) {
        _userData = UserModel.convert(_fetchData['data']);
        _userDataSave(_userData);
        // }
      }
    } catch (e) {
      throw e;
    }
  }

  // Future<void> _otpDataSave(OTPModel data) async {
  //   await _otpDatabase.addData(data);
  // }

  // void acessOTPData() {
  //   OTPModel _temp = _otpDatabase.acessData();
  //   if (_temp != null) {
  //     _otpData = _temp;
  //   }
  // }
}
