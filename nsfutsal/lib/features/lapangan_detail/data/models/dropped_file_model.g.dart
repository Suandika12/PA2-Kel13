// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropped_file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DroppedFile _$$_DroppedFileFromJson(Map<String, dynamic> json) =>
    _$_DroppedFile(
      name: json['name'] as String,
      url: json['url'] as String,
      mine: json['mine'] as String,
      bytes: json['bytes'] as int,
      size: json['size'] as String,
    );

Map<String, dynamic> _$$_DroppedFileToJson(_$_DroppedFile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'mine': instance.mine,
      'bytes': instance.bytes,
      'size': instance.size,
    };
