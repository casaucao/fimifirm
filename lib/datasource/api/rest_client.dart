import 'package:dio/dio.dart';
import 'package:fimifirm/datasource/api/models/get_firmware_entities_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(
    baseUrl: 'https://4r2prhxoza.execute-api.eu-west-1.amazonaws.com/prod/')
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET('getLatestFirmwares')
  Future<GetFirmwareEntitiesResponse> getFirmwareEntities();
}
