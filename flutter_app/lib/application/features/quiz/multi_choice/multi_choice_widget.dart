import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/quiz/multi_choice/choices_widget.dart';
import 'package:flutter_app/application/models/question_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'multi_choice_cubit.dart';

class MultiChoiceWidget extends StatelessWidget {
  const MultiChoiceWidget({
    super.key,
    required this.type,
    required this.questionChoices,
    required this.correctAnswer,
  });

  final String type;
  final List<String> questionChoices;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    List<String> choices = [];
    if (type == QuestionType.boolean.name) {
      choices.addAll(['True', 'False']);
    } else {
      choices.addAll(questionChoices);
    }
    return BlocProvider<MultiChoiceCubit>(
      create: (context) => MultiChoiceCubit(),
      child: ChoicesWidget(choices: choices, correctChoice: correctAnswer),
    );
  }
}
