import 'package:dio/dio.dart';
import 'package:fimifirm/datasource/api/models/get_firmware_entities_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(
    baseUrl:
        'https://paas-frankfurt.fimi.com/fimi-cms-web-interface/v3/firmware/')
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET("/getFirmwareDetail?fimiId=1")
  Future<GetFirmwareEntitiesResponse> getFirmwareEntities();
}
