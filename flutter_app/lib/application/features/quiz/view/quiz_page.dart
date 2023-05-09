import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/quiz/quiz_cubit.dart';
import 'package:flutter_app/application/models/quiz_page_data.dart';
import 'package:flutter_app/application/widgets/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'quiz_form.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key, required this.data});

  final QuizPageData data;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.go('/create-quiz');
        return Future.value(false);
      },
      child: Scaffold(
        appBar: const CustomAppBar(title: 'QUIZ'),
        body: BlocProvider<QuizCubit>(
          create: (context) => QuizCubit(questions: data.questions!),
          child: QuizForm(url: data.quizUrl),
        ),
      ),
    );
  }
}
