import 'package:flutter_app/domain/entities/category/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response.freezed.dart';
part 'category_response.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory CategoryResponse({
    List<Category>? triviaCategories,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
