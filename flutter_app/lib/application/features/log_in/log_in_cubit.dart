import 'package:authentication_repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application/models/form_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(const LogInInitial());

  final FormValidator emailValidator = FormValidator(
    hint: 'enter the email',
    regExp: RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'),
    errorMessage: 'invalid email',
    controller: TextEditingController(),
  );

  final FormValidator passwordlValidator = FormValidator(
    hint: 'enter the password',
    regExp: RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$'),
    errorMessage:
        'password shoud be at least 8 character long and contains at least one number and one uppercase letter',
    controller: TextEditingController(),
  );

  IconData getSuffixIcon() => state.isPasswordVisible
      ? Icons.visibility_off_outlined
      : Icons.visibility;

  void togglePasswordVisibility() {
    emit(LogInInitial(isPasswordVisible: !state.isPasswordVisible));
  }

  Future<void> submit() async {
    try {
      emit(LogInLoading());
      AuthenticationRepository repository = AuthenticationRepository();
      await repository.logIn(
        email: emailValidator.controller.text,
        password: passwordlValidator.controller.text,
      );
      emit(LogInSuccess());
    } on Exception catch (e) {
      emit(LogInFailed(message: e.toString()));
    }
  }
}
