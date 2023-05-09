import 'package:equatable/equatable.dart';
import 'package:flutter_app/domain/entities/score/firebase_score_entity.dart';
import 'package:flutter_app/domain/repositories/dashboard_repository.dart';
import 'package:flutter_app/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'quiz_history_state.dart';

class QuizHistoryCubit extends Cubit<QuizHistoryState> {
  QuizHistoryCubit(this.id) : super(QuizHistoryInitial()) {
    _fetchUserData();
  }

  String? id;

  DashboardRepository repository = serviceLocator.get<DashboardRepository>();

  Future<void> _fetchUserData() async {
    try {
      emit(QuizHistoryLoading());

      List<FirebaseScoreEntity> data = await repository.getUserQuizHistory(id!);

      emit(QuizHistorySuccess(data: data));
    } on Exception catch (e) {
      emit(QuizHistoryFailed(message: e.toString()));
    }
  }
}
