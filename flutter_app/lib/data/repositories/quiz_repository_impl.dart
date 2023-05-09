import 'package:dio/dio.dart';
import 'package:flutter_app/data/repositories/trivia_repository.dart';
import 'package:flutter_app/domain/repositories/quiz_repository.dart';
import 'package:rest_api/rest_api.dart';

class QuizRepositoryImpl extends TriviaRepostiory implements QuizRepository {
  @override
  Future generateQuiz({
    int? numOfQuestion,
    int? categoryId,
    String? difficulty,
    String? type,
    String? token,
  }) async {
    Map<String, dynamic> perameters = {};

    perameters['encode'] = 'base64';
    if (numOfQuestion != null) {
      perameters['amount'] = numOfQuestion;
    }
    if (categoryId != null) {
      perameters['category'] = categoryId;
    }
    if (difficulty != null) {
      perameters['difficulty'] = difficulty;
    }
    if (type != null) {
      perameters['type'] = type;
    }
    if (token != null) {
      perameters['token'] = token;
    }

    Response response = await client.request(
      '/api.php',
      HttpRequestType.get,
      queryParameters: perameters,
    );
    return response;
  }

  @override
  String getQuizUrl({
    int numOfQuestion = 10,
    int? categoryId,
    String? difficulty,
    String? type,
    String? token,
  }) {
    String url = client.serverAddress;
    url += '?amount=$numOfQuestion';
    if (categoryId != null) {
      url += '?category=$categoryId';
    }
    if (difficulty != null) {
      url += '?difficulty=$difficulty';
    }
    if (type != null) {
      url += '?type=$type';
    }
    return url;
  }

  @override
  Future getCategories() async {
    Response response = await client.request(
      '/api_category.php',
      HttpRequestType.get,
    );
    return response;
  }
}
