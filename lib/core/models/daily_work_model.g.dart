// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_work_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DailyLoginModelAdapter extends TypeAdapter<DailyLoginModel> {
  @override
  final int typeId = 5;

  @override
  DailyLoginModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DailyLoginModel(
      id: fields[4] as String,
      date: fields[5] as String,
      employeeId: fields[6] as String,
      isLeave: fields[0] as bool,
      loginCancelled: fields[3] as bool,
      loginConfirmed: fields[2] as bool,
      systemLogin: fields[1] as bool,
      coordinates: (fields[7] as List)?.cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, DailyLoginModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.isLeave)
      ..writeByte(1)
      ..write(obj.systemLogin)
      ..writeByte(2)
      ..write(obj.loginConfirmed)
      ..writeByte(3)
      ..write(obj.loginCancelled)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.date)
      ..writeByte(6)
      ..write(obj.employeeId)
      ..writeByte(7)
      ..write(obj.coordinates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyLoginModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
