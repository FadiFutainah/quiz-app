import 'package:flutter/material.dart';

class FormValidator {
  String hint;
  RegExp? regExp;
  String errorMessage;
  TextEditingController controller;
  String? Function(String?)? validator;

  static const Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  FormValidator({
    required this.hint,
    required this.errorMessage,
    required this.controller,
    this.regExp,
    this.validator,
  }) {
    assert(regExp != null || validator != null);
  }

  String? vildator(String? input) {
    if (validator != null) return validator!(input);
    return regExp!.hasMatch(input!) ? null : errorMessage;
  }

  bool isValid(String input) {
    return regExp!.hasMatch(input);
  }
}
