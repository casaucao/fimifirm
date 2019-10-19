import 'package:fimifirm/datasource/mapper.dart';
import 'package:fimifirm/model/firmware.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_firmware_entity.g.dart';

@JsonSerializable()
class ApiFirmwareEntity {
  String fileEncode;
  int fileSize;
  String fileUrl;
  int logicVersion;
  int model;
  int type;
  Map<String, String> sysNameI18N;
  Map<String, String> updateContentI18N;

  ApiFirmwareEntity(
      this.fileEncode,
      this.fileSize,
      this.fileUrl,
      this.logicVersion,
      this.model,
      this.type,
      this.sysNameI18N,
      this.updateContentI18N);

  factory ApiFirmwareEntity.fromJson(Map<String, dynamic> json) =>
      _$ApiFirmwareEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ApiFirmwareEntityToJson(this);
}

class ApiFirmwareEntityMapper extends MapperFrom<Firmware, ApiFirmwareEntity> {
  @override
  Firmware from(ApiFirmwareEntity data) {
    // TODO fill the class
    final Firmware firmware = Firmware(model: 3);
    return firmware;
  }
}
