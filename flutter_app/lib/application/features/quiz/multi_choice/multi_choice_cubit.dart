import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MultiChoiceCubit extends Cubit<MultiChoiceState> {
  MultiChoiceCubit()
      : super(const MultiChoiceState(isSubmited: false, choice: ''));

  Color? correctAnswerColor = Colors.green;
  Color? wrongAnswerColor = Colors.red;

  void reset() {
    emit(const MultiChoiceState(isSubmited: false, choice: ''));
  }

  void choose(String? choice) {
    if (state.isSubmited) return;
    emit(MultiChoiceState(isSubmited: false, choice: choice!));
  }

  Color? getChoiceColor(String choice, String correctChoice) {
    if (!state.isSubmited) return null;
    return choice == correctChoice ? correctAnswerColor : wrongAnswerColor;
  }

  void submit() {
    if (state.choice == '') return;
    emit(MultiChoiceState(isSubmited: true, choice: state.choice));
  }
}

class MultiChoiceState extends Equatable {
  final bool isSubmited;
  final String choice;
  const MultiChoiceState({
    required this.isSubmited,
    required this.choice,
  });

  @override
  List<Object?> get props => [isSubmited, choice];
}
