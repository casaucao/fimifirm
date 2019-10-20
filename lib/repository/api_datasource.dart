import 'package:fimifirm/model/firmware.dart';

abstract class ApiDatasource {
  Future<List<Firmware>> fetchLatestFirmwares();
}
