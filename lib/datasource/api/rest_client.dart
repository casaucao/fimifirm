import 'package:dio/dio.dart';
import 'package:fimifirm/datasource/api/models/api_firmware_entity.dart';
import 'package:retrofit/retrofit.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET("/tasks")
  Future<List<ApiFirmwareEntity>> getFirmwareEntities();
}
