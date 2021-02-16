import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';

import 'user_details.dart';
import 'user_email_model.dart';

part 'user_model.g.dart';

@HiveType(typeId: 2)
class UserModel {
  @HiveField(0)
  final UserDetails userDetail;
  @HiveField(1)
  final UserEmailModel userEmailData;
  @HiveField(2)
  final bool phoneStatus;
  @HiveField(3)
  final bool flatStatus;
  @HiveField(4)
  final bool accountStatus;
  @HiveField(5)
  final bool subcriptionStatus;
  @HiveField(6)
  final int totalEarning;
  @HiveField(7)
  final int walletBalance;
  @HiveField(8)
  final String firstName;
  @HiveField(9)
  final String lastName;
  @HiveField(10)
  final String mobNumber;
  @HiveField(11)
  final String email;
  @HiveField(12)
  final String referalCode;
  @HiveField(13)
  final String token;
  // @HiveField(14)
  // UserType userTypeStatus;
  @HiveField(15)
  final String userType;

  UserModel({
    @required this.userDetail,
    @required this.userEmailData,
    @required this.flatStatus,
    @required this.phoneStatus,
    @required this.accountStatus,
    @required this.subcriptionStatus,
    @required this.totalEarning,
    @required this.walletBalance,
    @required this.email,
    @required this.firstName,
    @required this.lastName,
    @required this.mobNumber,
    @required this.referalCode,
    @required this.token,
    @required this.userType,
    // @required this.userTypeStatus,
  });

  static UserModel convert(Map data) {
    // if (isNullOREmpty(data)) return null;

    UserDetails _usrDetails =
        UserDetails.convert(data['user_details']['profile']);

    UserEmailModel _usrEmail =
        UserEmailModel.convert(data['user_details']['verification']['email']);

    // UserType _userTypeStatus = UserType.customer;

    // switch (data['user_details']['user_type']) {
    //   case 'customer':
    //     _userTypeStatus = UserType.customer;
    //     break;
    //   case 'visitor':
    //     _userTypeStatus = UserType.vistior;
    //     break;
    //   default:
    //     _userTypeStatus = UserType.customer;
    // }
    return UserModel(
      userDetail: _usrDetails,
      userEmailData: _usrEmail,
      flatStatus: data['user_details']['verification']['flat']['status'],
      phoneStatus: data['user_details']['verification']['phone']['status'],
      accountStatus: data['user_details']['account']['status'],
      subcriptionStatus: data['user_details']['subsciption']['status'],
      totalEarning: data['user_details']['total_earning'],
      walletBalance: data['user_details']['wallet_balance'],
      email: data['user_details']['email'],
      firstName: data['user_details']['name']['first'],
      lastName: data['user_details']['name']['last'],
      mobNumber: data['user_details']['phone']['number'],
      referalCode: data['user_details']['referral_code'],
      token: data['token'],
      userType: data['user_details']['user_type'],
    );
  }
}
