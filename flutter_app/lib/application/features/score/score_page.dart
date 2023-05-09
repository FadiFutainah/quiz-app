import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/score/score_cubit.dart';
import 'package:flutter_app/application/models/score_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'view/widgets/score_result_widget.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key, required this.score});

  final ScoreModel score;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.go('/create-quiz');
        return Future.value(false);
      },
      child: BlocProvider<ScoreCubit>(
        lazy: false,
        create: (context) => ScoreCubit(score),
        child: ScoreResultWidget(score: score),
      ),
    );
  }
}
