// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_firmware_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiFirmwareEntity _$ApiFirmwareEntityFromJson(Map<String, dynamic> json) {
  return ApiFirmwareEntity(
    json['fileEncode'] as String,
    json['fileSize'] as int,
    json['fileUrl'] as String,
    json['logicVersion'] as int,
    json['model'] as int,
    json['type'] as int,
    (json['sysNameI18N'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    (json['updateContentI18N'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$ApiFirmwareEntityToJson(ApiFirmwareEntity instance) =>
    <String, dynamic>{
      'fileEncode': instance.fileEncode,
      'fileSize': instance.fileSize,
      'fileUrl': instance.fileUrl,
      'logicVersion': instance.logicVersion,
      'model': instance.model,
      'type': instance.type,
      'sysNameI18N': instance.sysNameI18N,
      'updateContentI18N': instance.updateContentI18N,
    };
