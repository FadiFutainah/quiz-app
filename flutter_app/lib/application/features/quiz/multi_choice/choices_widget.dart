import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/quiz/multi_choice/multi_choice_cubit.dart';
import 'package:flutter_app/application/features/quiz/quiz_cubit.dart';
import 'package:flutter_app/application/widgets/submit_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChoicesWidget extends StatelessWidget {
  const ChoicesWidget({
    super.key,
    required this.choices,
    required this.correctChoice,
  });

  final String correctChoice;
  final List<String> choices;

  List<RadioListTile> _buildRadioTiles(
          MultiChoiceState state, BuildContext context) =>
      choices
          .map(
            (e) => RadioListTile(
              value: e,
              groupValue: state.choice,
              onChanged: context.read<MultiChoiceCubit>().choose,
              title: Text(e),
              tileColor: context
                  .read<MultiChoiceCubit>()
                  .getChoiceColor(e, correctChoice),
            ),
          )
          .toList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MultiChoiceCubit, MultiChoiceState>(
      builder: (context, state) {
        return Column(
          children: [
            ..._buildRadioTiles(state, context),
            const SizedBox(height: 10),
            SubmitButton(
              onPressed: context.read<MultiChoiceCubit>().submit,
              title: 'Submit',
            ),
            Visibility(
              visible: state.isSubmited,
              child: SubmitButton(
                onPressed: () {
                  context.read<QuizCubit>().chooseAnswer(state.choice);
                  context.read<MultiChoiceCubit>().reset();
                },
                title: 'Next',
              ),
            ),
          ],
        );
      },
    );
  }
}
