import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rest_api/src/models/enums.dart';
import 'package:rest_api/src/rest_api_base.dart';

class RestApiService extends Rest {
  RestApiService({
    required super.serverAddress,
    required super.connectTimeout,
    required super.receiveTimeout,
  });

  @override
  Future<Response> request(
    String endpoint,
    HttpRequestType requestType, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool? encodeRequest,
    bool? decodeResponse,
  }) async {
    encodeRequest ??= super.encodeRequest;
    decodeResponse ??= super.decodeResponse;
    headers ??= super.defaultHeaders;
    dynamic data = encodeRequest ? jsonEncode(body) : body;
    String url = serverAddress + endpoint;
    Options options = Options(headers: headers);
    Response? response;
    switch (requestType) {
      case HttpRequestType.get:
        return await client!.get(
          url,
          options: options,
          queryParameters: queryParameters,
        );
      case HttpRequestType.post:
        return await client!.post(
          url,
          data: data,
          options: options,
          queryParameters: queryParameters,
        );
      case HttpRequestType.delete:
        return await client!.delete(
          url,
          data: data,
          options: options,
          queryParameters: queryParameters,
        );
      default:
    }
    return _returnResponse(response!, decodeResponse);
  }

  Future<Response> _returnResponse(
    Response response, [
    bool decode = true,
  ]) async {
    if (decode) {
      response.data = jsonDecode(response.data);
    }
    return response;
  }
}
