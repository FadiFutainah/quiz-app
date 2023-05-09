import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/quiz_history/quiz_history_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'quiz_history_body.dart';

class QuizHistoryPage extends StatelessWidget {
  const QuizHistoryPage({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizHistoryCubit(userId),
      child: const QuizHistoryBody(),
    );
  }
}
