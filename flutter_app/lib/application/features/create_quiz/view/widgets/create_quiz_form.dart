import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/create_quiz/create_quiz_cubit.dart';
import 'package:flutter_app/application/features/create_quiz/drop_down_choice/drop_down_choice_cubit.dart';
import 'package:flutter_app/application/models/drop_down_choice.dart';
import 'package:flutter_app/application/models/quiz_page_data.dart';
import 'package:flutter_app/application/widgets/custom_app_bar.dart';
import 'package:flutter_app/application/widgets/loading_widget.dart';
import 'package:flutter_app/application/widgets/submit_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../drop_down_choice/drop_down_choice_button.dart';
import 'number_input_field.dart';

class CreateQuizForm extends StatelessWidget {
  const CreateQuizForm({super.key});

  @override
  Widget build(BuildContext context) {
    double height = ScreenUtil().screenHeight;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home',
        leading: IconButton(
          onPressed: context.read<CreateQuizCubit>().signOut,
          icon: const Icon(Icons.logout_outlined),
        ),
      ),
      body: BlocConsumer<CreateQuizCubit, CreateQuizState>(
        listener: (context, state) {
          if (state is SignedOutSuccessfuly) {
            if (FocusScope.of(context).hasFocus) {
              FocusScope.of(context).unfocus();
            }
            Fluttertoast.showToast(msg: 'sign out successfully');
            context.go('/');
          } else if (state is QuizFormLoadingFailed) {
            Fluttertoast.showToast(msg: state.message);
          } else if (state is QuizCreated) {
            if (FocusScope.of(context).hasFocus) {
              FocusScope.of(context).unfocus();
            }
            context.go(
              '/quiz',
              extra: QuizPageData(
                  questions: state.quiz.results,
                  quizUrl: context.read<CreateQuizCubit>().quizUrl),
            );
          }
        },
        builder: (context, state) {
          if (state is QuizFormLoaded) {
            CreateQuizCubit cubit = context.read<CreateQuizCubit>();
            return SingleChildScrollView(
              child: SizedBox(
                height: height,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text('Quiz Info'),
                    const SizedBox(height: 20),
                    NumberInputField(
                      max: 50,
                      min: 1,
                      text: 'number of questions \n (maximum 50)',
                      onChanged: (value) {
                        cubit.setNumOfQuestion(value.toInt());
                      },
                      value: cubit.numOfQuestions!.toDouble(),
                    ),
                    BlocProvider<DropDownChoiceCubit>(
                      create: (context) => DropDownChoiceCubit(
                        state.categories.first.id!,
                      ),
                      child: DropDownChioceButton(
                        text: 'Category',
                        choices: state.categories
                            .map(
                              (e) => DropDownChoice(name: e.name!, value: e.id),
                            )
                            .toList(),
                        onChanged: (choice) {
                          cubit.chosenCategoryId = choice!;
                        },
                      ),
                    ),
                    BlocProvider<DropDownChoiceCubit>(
                      create: (context) => DropDownChoiceCubit(0),
                      child: DropDownChioceButton(
                        text: 'Difficulty',
                        choices: cubit.difficulties,
                        onChanged: (choice) {
                          cubit.difficultyIndex = choice!;
                        },
                      ),
                    ),
                    BlocProvider<DropDownChoiceCubit>(
                      create: (context) => DropDownChoiceCubit(0),
                      child: DropDownChioceButton(
                        text: 'Type',
                        choices: cubit.displayTypes,
                        onChanged: (choice) {
                          cubit.typeIndex = choice!;
                        },
                      ),
                    ),
                    SubmitButton(
                      onPressed: cubit.createQuiz,
                      title: 'create',
                    ),
                  ],
                ),
              ),
            );
          }
          return const LoadingWidget();
        },
      ),
    );
  }
}
