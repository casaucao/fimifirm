import 'package:fimifirm/datasource/api/api_datasource_impl.dart';
import 'package:fimifirm/model/firmware.dart';
import 'package:fimifirm/repository/api_datasource.dart';

class Repository {
  final ApiDatasource _apiDatasource = ApiDatasourceImpl();

  Future<List<Firmware>> getLatestFirmwares() async {
    return await _apiDatasource.fetchLatestFirmwares();
  }
}
