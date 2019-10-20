import 'package:dio/dio.dart';
import 'package:fimifirm/datasource/api/models/get_firmware_entities_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://api.allorigins.win/')
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET(
      "/raw?url=http%3A%2F%2Fpaas-frankfurt.fimi.com%2Ffimi-cms-web-interface%2Fv3%2Ffirmware%2FgetFirmwareDetail%3FfimiId%3D1")
  Future<GetFirmwareEntitiesResponse> getFirmwareEntities();
}
