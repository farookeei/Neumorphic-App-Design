// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OTPModelAdapter extends TypeAdapter<OTPModel> {
  @override
  final int typeId = 1;

  @override
  OTPModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OTPModel(
      countryCode: fields[1] as String,
      mobileNumber: fields[0] as String,
      reqID: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OTPModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.mobileNumber)
      ..writeByte(1)
      ..write(obj.countryCode)
      ..writeByte(2)
      ..write(obj.reqID);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OTPModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
