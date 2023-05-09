// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionResponse _$$_QuestionResponseFromJson(Map<String, dynamic> json) =>
    _$_QuestionResponse(
      responseCode: json['response_code'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionResponseToJson(_$_QuestionResponse instance) =>
    <String, dynamic>{
      'response_code': instance.responseCode,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };
