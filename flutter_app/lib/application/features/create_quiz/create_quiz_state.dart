part of 'create_quiz_cubit.dart';

abstract class CreateQuizState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreateQuizInitial extends CreateQuizState {}

class SignedOutSuccessfuly extends CreateQuizState {}

class QuizFormLoading extends CreateQuizState {}

class QuizCreated extends CreateQuizState {
  QuizCreated({required this.quiz});

  final QuestionResponse quiz;

  @override
  List<Object?> get props => [quiz];
}

class QuizFormLoadingFailed extends CreateQuizState {
  QuizFormLoadingFailed({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}

class QuizFormLoaded extends CreateQuizState {
  QuizFormLoaded({required this.categories});

  final List<Category> categories;

  @override
  List<Object?> get props => [categories];
}
