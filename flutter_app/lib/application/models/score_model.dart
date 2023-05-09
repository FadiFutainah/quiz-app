class ScoreModel {
  int numOfCorrectAnswers;
  int numOfQuestions;
  Duration quizTakingTime;
  String url;

  ScoreModel({
    required this.numOfCorrectAnswers,
    required this.numOfQuestions,
    required this.quizTakingTime,
    required this.url,
  });

  String get result =>
      numOfCorrectAnswers > numOfQuestions * 0.4 ? 'Pass' : 'Failed';
}
