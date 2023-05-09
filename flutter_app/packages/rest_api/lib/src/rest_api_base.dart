import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rest_api/src/models/enums.dart';

abstract class Rest {
  Rest({
    required this.serverAddress,
    this.receiveTimeout = const Duration(seconds: 30),
    this.connectTimeout = const Duration(seconds: 30),
    this.defaultHeaders = const <String, dynamic>{
      HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      HttpHeaders.acceptHeader: 'application/json',
    },
    this.decodeResponse = true,
    this.encodeRequest = true,
  }) {
    client = Dio(
      BaseOptions(
        baseUrl: serverAddress,
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
      ),
    );
  }

  final String serverAddress;
  final Duration receiveTimeout;
  final Duration connectTimeout;
  final Map<String, dynamic> defaultHeaders;
  final bool encodeRequest;
  final bool decodeResponse;

  Dio? client;

  Future request(String endpoint, HttpRequestType requestType);
}
