// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 2;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      userDetail: fields[0] as UserDetails,
      userEmailData: fields[1] as UserEmailModel,
      flatStatus: fields[3] as bool,
      phoneStatus: fields[2] as bool,
      accountStatus: fields[4] as bool,
      subcriptionStatus: fields[5] as bool,
      totalEarning: fields[6] as int,
      walletBalance: fields[7] as int,
      email: fields[11] as String,
      firstName: fields[8] as String,
      lastName: fields[9] as String,
      mobNumber: fields[10] as String,
      referalCode: fields[12] as String,
      token: fields[13] as String,
      userType: fields[15] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.userDetail)
      ..writeByte(1)
      ..write(obj.userEmailData)
      ..writeByte(2)
      ..write(obj.phoneStatus)
      ..writeByte(3)
      ..write(obj.flatStatus)
      ..writeByte(4)
      ..write(obj.accountStatus)
      ..writeByte(5)
      ..write(obj.subcriptionStatus)
      ..writeByte(6)
      ..write(obj.totalEarning)
      ..writeByte(7)
      ..write(obj.walletBalance)
      ..writeByte(8)
      ..write(obj.firstName)
      ..writeByte(9)
      ..write(obj.lastName)
      ..writeByte(10)
      ..write(obj.mobNumber)
      ..writeByte(11)
      ..write(obj.email)
      ..writeByte(12)
      ..write(obj.referalCode)
      ..writeByte(13)
      ..write(obj.token)
      ..writeByte(15)
      ..write(obj.userType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
