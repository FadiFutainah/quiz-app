import 'package:flutter_app/domain/entities/question/question.dart';

class QuizPageData {
  List<Question>? questions;
  String quizUrl;

  QuizPageData({
    this.questions,
    required this.quizUrl,
  });
}
