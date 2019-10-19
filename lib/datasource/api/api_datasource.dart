import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:fimifirm/datasource/api/models/api_firmware_entity.dart';
import 'package:fimifirm/datasource/api/rest_client.dart';
import 'package:fimifirm/model/firmware.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiDatasource {
  RestClient _restClient;
  ApiFirmwareEntityMapper _firmwareMapper = ApiFirmwareEntityMapper();

  ApiDatasource() {
    Dio client = Dio();

    if (!kIsWeb) {
      var httpClientCreate = (client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      (client.httpClientAdapter as DefaultHttpClientAdapter)
          .onHttpClientCreate = httpClientCreate;
    }

    _restClient = RestClient(client);
  }

  Future<http.Response> fetchPost() async {
    return http.get('https://jsonplaceholder.typicode.com/posts/1');
  }

  Future<List<Firmware>> fetchLatestFirmwares() async {
    return (await _restClient.getFirmwareEntities())
        .data
        .map(_firmwareMapper.from)
        .toList();
  }
}
