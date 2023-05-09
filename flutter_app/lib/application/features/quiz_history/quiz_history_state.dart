part of 'quiz_history_cubit.dart';

abstract class QuizHistoryState extends Equatable {
  @override
  List<Object?> get props => [];
}

class QuizHistoryInitial extends QuizHistoryState {}

class QuizHistoryLoading extends QuizHistoryState {}

class QuizHistoryFailed extends QuizHistoryState {
  QuizHistoryFailed({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}

class QuizHistorySuccess extends QuizHistoryState {
  final List<FirebaseScoreEntity> data;

  QuizHistorySuccess({required this.data});

  @override
  List<Object?> get props => [data];
}

class SignedOutSuccessfuly extends QuizHistoryState {}
