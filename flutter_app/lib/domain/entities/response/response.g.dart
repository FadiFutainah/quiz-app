// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseEntity _$$_ResponseEntityFromJson(Map<String, dynamic> json) =>
    _$_ResponseEntity(
      responseCode: json['response_code'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseEntityToJson(_$_ResponseEntity instance) =>
    <String, dynamic>{
      'response_code': instance.responseCode,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };
