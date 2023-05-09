import 'package:flutter_app/domain/utils/base64_decoder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Question({
    String? category,
    String? type,
    String? difficulty,
    String? question,
    String? correctAnswer,
    List<String>? incorrectAnswers,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  Question decodeFromBase64() => Question(
        question: Base64Decoder.decode(question!),
        category: Base64Decoder.decode(category!),
        correctAnswer: Base64Decoder.decode(correctAnswer!),
        difficulty: Base64Decoder.decode(difficulty!),
        type: Base64Decoder.decode(type!),
        incorrectAnswers:
            incorrectAnswers!.map((e) => Base64Decoder.decode(e)).toList(),
      );
}
