// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WordEntityAdapter extends TypeAdapter<WordEntity> {
  @override
  final int typeId = 0;

  @override
  WordEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WordEntity(
      fields[0] as String,
      (fields[1] as List).cast<SynonymEntity>(),
      (fields[2] as List).cast<DefinitionEntity>(),
      (fields[3] as List).cast<TranslationEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, WordEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.word)
      ..writeByte(1)
      ..write(obj.synonym)
      ..writeByte(2)
      ..write(obj.definition)
      ..writeByte(3)
      ..write(obj.translation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}