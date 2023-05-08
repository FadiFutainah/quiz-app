import 'package:flutter_app/domain/entities/question/question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class ResponseEntity with _$ResponseEntity {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  factory ResponseEntity({
    int? responseCode,
    List<Question>? results,
  }) = _ResponseEntity;

  factory ResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ResponseEntityFromJson(json);
}
