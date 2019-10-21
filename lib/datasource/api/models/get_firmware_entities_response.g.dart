// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_firmware_entities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFirmwareEntitiesResponse _$GetFirmwareEntitiesResponseFromJson(
    Map<String, dynamic> json) {
  return GetFirmwareEntitiesResponse(
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : ApiFirmwareEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetFirmwareEntitiesResponseToJson(
        GetFirmwareEntitiesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
