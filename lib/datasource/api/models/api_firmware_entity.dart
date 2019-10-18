import 'package:json_annotation/json_annotation.dart';

part 'api_firmware_entity.g.dart';

@JsonSerializable()
class ApiFirmwareEntity {
  String id;

  ApiFirmwareEntity(this.id);

  factory ApiFirmwareEntity.fromJson(Map<String, dynamic> json) =>
      _$ApiFirmwareEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ApiFirmwareEntityToJson(this);
}
