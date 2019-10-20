// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  final String baseUrl = 'https://api.allorigins.win/';

  @override
  getFirmwareEntities() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/raw?url=http%3A%2F%2Fpaas-frankfurt.fimi.com%2Ffimi-cms-web-interface%2Fv3%2Ffirmware%2FgetFirmwareDetail%3FfimiId%3D1',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GetFirmwareEntitiesResponse.fromJson(_result.data);
    return Future.value(value);
  }
}
