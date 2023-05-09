part of 'log_in_cubit.dart';

class LogInState extends Equatable {
  const LogInState({this.isPasswordVisible = false});

  final bool isPasswordVisible;

  @override
  List<Object?> get props => [isPasswordVisible];
}

class LogInInitial extends LogInState {
  const LogInInitial({super.isPasswordVisible});

  @override
  List<Object?> get props => [isPasswordVisible];
}

class LogInSuccess extends LogInState {}

class LogInFailed extends LogInState {
  const LogInFailed({required this.message, super.isPasswordVisible});

  final String message;

  @override
  List<Object?> get props => [message];
}

class LogInLoading extends LogInState {}
