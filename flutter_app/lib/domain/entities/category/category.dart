import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Category({
    int? id,
    String? name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
