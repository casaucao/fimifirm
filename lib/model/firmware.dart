import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Firmware extends Equatable {
  final String fileEncode;
  final int fileSize;
  final String fileUrl;
  final int logicVersion;
  final int model;
  final int type;
  final String sysNameI18N;
  final String updateContentI18N;

  Firmware(this.fileEncode, this.fileSize, this.fileUrl, this.logicVersion,
      this.model, this.type, this.sysNameI18N, this.updateContentI18N);

  @override
  List<Object> get props => [model];
}
