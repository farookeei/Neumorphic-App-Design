import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:todo_employee/core/functions/is_null_or_empty.dart';

part 'user_details.g.dart';


@HiveType(typeId: 3)
class UserDetails {
  @HiveField(0)
  final String imageURL;
  @HiveField(1)
  final String gender;
  @HiveField(2)
  final String city;
  @HiveField(3)
  final String appartment;

  UserDetails({
    @required this.appartment,
    @required this.city,
    @required this.gender,
    @required this.imageURL,
  });

  static UserDetails convert(Map data) {
    if (isNullOREmpty(data)) return null;

    return UserDetails(
      appartment: data['apartment_name'],
      city: data['city'],
      gender: data['gender'],
      imageURL: data['profile_image'],
    );
  }
}
