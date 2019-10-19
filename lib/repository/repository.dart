import 'package:fimifirm/datasource/api/api_datasource.dart';
import 'package:fimifirm/model/firmware.dart';

class Repository {
  final ApiDatasource _apiDatasource = ApiDatasource();

  Future<List<Firmware>> getLatestFirmwares() async {
    return await _apiDatasource.fetchLatestFirmwares();
  }
}
