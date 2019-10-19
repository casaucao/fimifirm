import 'package:fimifirm/datasource/api/models/api_firmware_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_firmware_entities_response.g.dart';

@JsonSerializable()
class GetFirmwareEntitiesResponse {
  List<ApiFirmwareEntity> data;

  GetFirmwareEntitiesResponse(this.data);

  factory GetFirmwareEntitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFirmwareEntitiesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetFirmwareEntitiesResponseToJson(this);
}
