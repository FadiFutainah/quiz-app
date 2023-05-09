import 'package:equatable/equatable.dart';
import 'package:flutter_app/domain/entities/user_score/firebase_user.dart';
import 'package:flutter_app/domain/repositories/dashboard_repository.dart';
import 'package:flutter_app/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial()) {
    _fetchDashboardData();
  }

  DashboardRepository repository = serviceLocator.get<DashboardRepository>();

  Future<void> _fetchDashboardData() async {
    try {
      emit(DashboardLoading());

      List<FirebaseUser> data = await repository.getUsers();

      emit(DashboardSuccess(data: data));
    } on Exception catch (e) {
      emit(DashboardFailed(message: e.toString()));
    }
  }
}
