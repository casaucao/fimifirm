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

  @override
  getFirmwareEntities() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<List<dynamic>> _result = await _dio.request('/tasks',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET', headers: <String, dynamic>{}, extra: _extra),
        data: _data);
    var value = _result.data
        .map((dynamic i) =>
            ApiFirmwareEntity.fromJson(i as Map<String, dynamic>))
        .toList();
    return Future.value(value);
  }
}
