import 'package:authentication_repository/authentication_repository.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app/application/models/drop_down_choice.dart';
import 'package:flutter_app/application/models/question_type.dart';
import 'package:flutter_app/domain/entities/category/category.dart';
import 'package:flutter_app/domain/entities/category_response/category_response.dart';
import 'package:flutter_app/domain/entities/question_response/question_response.dart';
import 'package:flutter_app/domain/repositories/quiz_repository.dart';
import 'package:flutter_app/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'create_quiz_state.dart';

class CreateQuizCubit extends Cubit<CreateQuizState> {
  CreateQuizCubit() : super(CreateQuizInitial()) {
    _fetchCategories();
  }

  QuizRepository quizRepository = serviceLocator.get<QuizRepository>();
  AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  List<Category> loadedCategories = [];

  List<DropDownChoice> displayTypes = [
    DropDownChoice(name: 'Any Type', value: 0),
    DropDownChoice(name: 'Multiple Choice', value: 1),
    DropDownChoice(name: 'True / False', value: 2),
  ];

  Map<String, String> sendTypes = {
    'Multiple Choice': QuestionType.multiple.name,
    'True / False': QuestionType.boolean.name,
  };

  List<DropDownChoice> difficulties = [
    DropDownChoice(name: 'Any Difficulty', value: 0),
    DropDownChoice(name: 'Easy', value: 1),
    DropDownChoice(name: 'Medium', value: 2),
    DropDownChoice(name: 'Hard', value: 3),
  ];

  String quizUrl = '';
  int? numOfQuestions = 10;
  int chosenCategoryId = 0;
  int difficultyIndex = 0;
  int typeIndex = 0;

  void _resetCubitValues() {
    quizUrl = '';
    numOfQuestions = 10;
    chosenCategoryId = 0;
    difficultyIndex = 0;
    typeIndex = 0;
  }

  void setNumOfQuestion(int value) {
    numOfQuestions = value;
  }

  void setDifficulty(int value) {
    difficultyIndex = value;
  }

  void setCategoryId(int value) {
    chosenCategoryId = value;
  }

  void setType(int value) {
    typeIndex = value;
  }

  Future signOut() async {
    try {
      emit(QuizFormLoading());
      await authenticationRepository.logOut();
      emit(SignedOutSuccessfuly());
    } on Exception catch (e) {
      emit(QuizFormLoadingFailed(message: e.toString()));
      _resetCubitValues();
      emit(QuizFormLoaded(categories: loadedCategories));
    }
  }

  Future<void> _fetchCategories() async {
    try {
      emit(QuizFormLoading());
      Response response = await quizRepository.getCategories();
      CategoryResponse data = CategoryResponse.fromJson(response.data);
      List<Category> categories = [];
      categories.add(const Category(id: 0, name: 'Any category'));
      categories.addAll(data.triviaCategories!);
      loadedCategories = categories;
      emit(QuizFormLoaded(categories: categories));
    } on Exception catch (e) {
      emit(QuizFormLoadingFailed(message: e.toString()));
    }
  }

  Future<void> createQuiz() async {
    try {
      emit(QuizFormLoading());
      String? difficulty;
      String? type;
      int? categoryId;
      if (typeIndex != 0) {
        type = sendTypes[displayTypes[typeIndex].name];
      }
      if (difficultyIndex != 0) {
        difficulty = difficulties[difficultyIndex].name;
      }
      if (chosenCategoryId != 0) {
        categoryId = chosenCategoryId;
      }

      Response response = await quizRepository.generateQuiz(
        numOfQuestion: numOfQuestions,
        categoryId: categoryId,
        difficulty: difficulty,
        type: type,
      );
      QuestionResponse quiz = QuestionResponse.fromJson(response.data);
      if (quiz.results!.isEmpty) {
        emit(QuizFormLoadingFailed(message: 'No Quiz Maatches'));
        emit(QuizFormLoaded(categories: loadedCategories));
        _resetCubitValues();
      } else {
        quizUrl = quizRepository.getQuizUrl(
          categoryId: categoryId,
          difficulty: difficulty,
          numOfQuestion: numOfQuestions!,
          type: type,
        );
        emit(QuizCreated(quiz: quiz));
      }
    } on Exception catch (e) {
      emit(QuizFormLoadingFailed(message: e.toString()));
    }
  }
}
