import 'package:dio/dio.dart';
import 'package:fimifirm/datasource/api/models/api_firmware_entity.dart';
import 'package:fimifirm/datasource/api/rest_client.dart';
import 'package:fimifirm/model/firmware.dart';
import 'package:http/http.dart' as http;

class ApiDatasource {
  RestClient _restClient = RestClient(Dio());
  ApiFirmwareEntityMapper _firmwareMapper = ApiFirmwareEntityMapper();

  Future<http.Response> fetchPost() async {
    return http.get('https://jsonplaceholder.typicode.com/posts/1');
  }

  Future<List<Firmware>> fetchLatestFirmwares() async {
    return (await _restClient.getFirmwareEntities())
        .data
        .map(_firmwareMapper.from);
  }
}
