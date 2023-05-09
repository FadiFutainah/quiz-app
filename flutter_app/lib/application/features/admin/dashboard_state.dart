part of 'dashboard_cubit.dart';

abstract class DashboardState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DashboardInitial extends DashboardState {}

class DashboardLoading extends DashboardState {}

class SignedOutSuccessfuly extends DashboardState {}

class DashboardFailed extends DashboardState {
  DashboardFailed({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}

class DashboardSuccess extends DashboardState {
  final List<FirebaseUser> data;

  DashboardSuccess({required this.data});

  @override
  List<Object?> get props => [data];
}
