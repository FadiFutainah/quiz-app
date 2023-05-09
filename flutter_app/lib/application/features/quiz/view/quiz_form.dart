import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/quiz/multi_choice/multi_choice_widget.dart';
import 'package:flutter_app/application/features/quiz/quiz_cubit.dart';
import 'package:flutter_app/application/models/score_model.dart';
import 'package:flutter_app/application/widgets/loading_widget.dart';
import 'package:flutter_app/domain/entities/question/question.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'widget/question_info.dart';

class QuizForm extends StatelessWidget {
  const QuizForm({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizCubit, int>(
      listener: (context, state) {
        QuizCubit cubit = context.read<QuizCubit>();
        if (cubit.hasFinished) {
          context.push(
            '/score',
            extra: ScoreModel(
              numOfCorrectAnswers: cubit.correctAnswers,
              numOfQuestions: cubit.questions.length,
              quizTakingTime: cubit.quizDuration!,
              url: url,
            ),
          );
        }
      },
      builder: (context, state) {
        QuizCubit cubit = context.read<QuizCubit>();
        if (cubit.hasFinished) {
          return const LoadingWidget();
        }
        Question question = cubit.currentQuestion;
        return Column(
          children: [
            const SizedBox(height: 35),
            QuestionInfo(
              title: 'score',
              text: '${cubit.correctAnswers} of ${cubit.questions.length}',
            ),
            const SizedBox(height: 35),
            QuestionInfo(title: 'difficulty', text: question.difficulty!),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                question.question!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 35),
            MultiChoiceWidget(
              type: question.type!,
              questionChoices: cubit.choices,
              correctAnswer: question.correctAnswer!,
            ),
          ],
        );
      },
    );
  }
}
