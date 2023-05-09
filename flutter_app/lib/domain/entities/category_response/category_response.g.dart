// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryResponse _$$_CategoryResponseFromJson(Map<String, dynamic> json) =>
    _$_CategoryResponse(
      triviaCategories: (json['trivia_categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryResponseToJson(_$_CategoryResponse instance) =>
    <String, dynamic>{
      'trivia_categories':
          instance.triviaCategories?.map((e) => e.toJson()).toList(),
    };
