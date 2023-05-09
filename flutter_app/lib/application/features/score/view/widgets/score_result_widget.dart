import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/quiz/view/widget/question_info.dart';
import 'package:flutter_app/application/models/duration_extension.dart';
import 'package:flutter_app/application/models/score_model.dart';
import 'package:flutter_app/application/widgets/custom_app_bar.dart';

class ScoreResultWidget extends StatelessWidget {
  const ScoreResultWidget({
    super.key,
    required this.score,
  });

  final ScoreModel score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Score'),
      body: Column(
        children: [
          const SizedBox(height: 35),
          QuestionInfo(
            title: 'score : ',
            text: '${score.numOfCorrectAnswers} / ${score.numOfQuestions}',
          ),
          const SizedBox(height: 35),
          QuestionInfo(
            title: 'time : ',
            text: score.quizTakingTime.inNormalFormat(),
          ),
          const SizedBox(height: 35),
          Center(child: Text(score.result)),
        ],
      ),
    );
  }
}
