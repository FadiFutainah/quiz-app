part of 'sign_up_cubit.dart';

abstract class SignUpState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignUpInitial extends SignUpState {}

class SignUpSuccess extends SignUpState {}

class SignUpFailed extends SignUpState {
  SignUpFailed({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}

class SignUpLoading extends SignUpState {}
