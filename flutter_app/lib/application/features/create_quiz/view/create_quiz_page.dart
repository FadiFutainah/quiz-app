import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/create_quiz/create_quiz_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/create_quiz_form.dart';

class CreateQuizPage extends StatelessWidget {
  const CreateQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateQuizCubit>(
      create: (context) => CreateQuizCubit(),
      child: const CreateQuizForm(),
    );
  }
}
