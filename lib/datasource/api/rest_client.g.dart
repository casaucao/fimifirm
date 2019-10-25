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

  final String baseUrl =
      'https://paas-frankfurt.fimi.com/fimi-cms-web-interface/v3/firmware/';

  @override
  getFirmwareEntities() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'getFirmwareDetail?fimiId=51908011401231&clientType=0&user_type=2&clientVersion=V1.0.17&signMsg=3cea24a437692edfd0c0c4faf3a81778',
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
