import 'package:authentication_repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application/models/form_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordlController = TextEditingController();
  static TextEditingController confirmPasswordlController =
      TextEditingController();

  final FormValidator emailValidator = FormValidator(
    hint: 'enter the email',
    regExp: RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'),
    errorMessage: 'invalid email',
    controller: emailController,
  );

  final FormValidator passwordlValidator = FormValidator(
    hint: 'enter the password',
    regExp: RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$'),
    errorMessage:
        'password shoud be at least 8 character long and contains at least one number and one uppercase letter',
    controller: passwordlController,
  );

  final FormValidator confirmPasswordlValidator = FormValidator(
    hint: 'confirm the password',
    validator: (input) {
      if (passwordlController.text != confirmPasswordlController.text) {
        return 'passwords does not match';
      }
      return null;
    },
    errorMessage: 'passwords does not match',
    controller: confirmPasswordlController,
  );

  void togglePasswordVisibility() {
    emit(SignUpInitial());
  }

  Future<void> submit() async {
    try {
      emit(SignUpLoading());
      AuthenticationRepository repository = AuthenticationRepository();
      await repository.signUp(
        email: emailValidator.controller.text,
        password: passwordlValidator.controller.text,
      );
      emit(SignUpSuccess());
    } on Exception catch (e) {
      emit(SignUpFailed(message: e.toString()));
    }
  }
}
