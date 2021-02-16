// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_email_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserEmailModelAdapter extends TypeAdapter<UserEmailModel> {
  @override
  final int typeId = 4;

  @override
  UserEmailModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserEmailModel(
      code: fields[0] as String,
      status: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, UserEmailModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserEmailModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
