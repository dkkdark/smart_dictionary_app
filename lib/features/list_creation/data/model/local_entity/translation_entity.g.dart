// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TranslationEntityAdapter extends TypeAdapter<TranslationEntity> {
  @override
  final int typeId = 0;

  @override
  TranslationEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TranslationEntity(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TranslationEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranslationEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
