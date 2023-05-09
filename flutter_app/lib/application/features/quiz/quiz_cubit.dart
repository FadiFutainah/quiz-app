import 'package:flutter_app/domain/entities/question/question.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizCubit extends Cubit<int> {
  QuizCubit({required this.questions}) : super(0) {
    startTime = DateTime.now();
  }

  DateTime? startTime;

  Duration? quizDuration;

  List<Question> questions;

  int correctAnswers = 0;

  bool get hasFinished => state == questions.length;

  Question get currentQuestion => questions[state].decodeFromBase64();

  List<String> get choices {
    List<String> choices = [];
    choices.addAll(currentQuestion.incorrectAnswers!);
    choices.add(currentQuestion.correctAnswer!);
    choices.shuffle();
    return choices;
  }

  void chooseAnswer(String answer) {
    if (answer == '') return;
    if (answer == currentQuestion.correctAnswer) {
      correctAnswers++;
    }
    if (state == questions.length - 1) {
      DateTime endTime = DateTime.now();
      quizDuration =
          Duration(seconds: (endTime.second - startTime!.second).abs());
    }
    emit(state + 1);
  }
}
