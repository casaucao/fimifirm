import 'package:fimifirm/datasource/api/api_datasource.dart';

class Repository {
  final ApiDatasource _apiDatasource = ApiDatasource();

  // TODO Delete this function
  void foo() {
    print("foo");
  }

  Future<List<bool>> getLatestFirmwares() async {
    // TODO
//    return _apiDatasource.fetchLatestFirmwares();
    return <bool>[];
  }
}
