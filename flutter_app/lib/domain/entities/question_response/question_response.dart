import 'package:flutter_app/domain/entities/question/question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_response.freezed.dart';
part 'question_response.g.dart';

@freezed
class QuestionResponse with _$QuestionResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory QuestionResponse({
    int? responseCode,
    List<Question>? results,
  }) = _QuestionResponse;

  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseFromJson(json);
}
