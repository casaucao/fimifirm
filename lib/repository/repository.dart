import 'package:fimifirm/datasource/api/api_datasource.dart';
import 'package:fimifirm/model/firmware.dart';

class Repository {
  final ApiDatasource _apiDatasource = ApiDatasource();

  // TODO Delete this function
  void foo() {
    print("foo");
  }

  Future<List<Firmware>> getLatestFirmwares() async {
    await _apiDatasource.fetchLatestFirmwares();
    return <Firmware>[];
  }
}
