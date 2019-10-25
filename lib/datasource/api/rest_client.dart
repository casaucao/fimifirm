import 'package:dio/dio.dart';
import 'package:fimifirm/datasource/api/models/get_firmware_entities_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(
    baseUrl:
        'https://paas-frankfurt.fimi.com/fimi-cms-web-interface/v3/firmware/')
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET(
      'getFirmwareDetail?fimiId=51908011401231&clientType=0&user_type=2&clientVersion=V1.0.17&signMsg=3cea24a437692edfd0c0c4faf3a81778')
  Future<GetFirmwareEntitiesResponse> getFirmwareEntities();
}
