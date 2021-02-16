import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


part 'otp_model.g.dart';

@HiveType(typeId: 1)
class OTPModel {
  @HiveField(0)
  final String mobileNumber;
  @HiveField(1)
  final String countryCode;
  @HiveField(2)
  final String reqID;

  OTPModel({
    this.countryCode = '91',
    @required this.mobileNumber,
    @required this.reqID,
  });
}
