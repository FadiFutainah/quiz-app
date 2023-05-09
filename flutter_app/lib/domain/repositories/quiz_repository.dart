abstract class QuizRepository {
  Future generateQuiz({
    int? numOfQuestion,
    int? categoryId,
    String? difficulty,
    String? type,
  });

  Future getCategories();

  String getQuizUrl({
    int numOfQuestion = 10,
    int? categoryId,
    String? difficulty,
    String? type,
    String? token,
  });
}
