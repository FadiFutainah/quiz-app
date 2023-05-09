import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/sign_up/sign_up_cubit.dart';
import 'package:flutter_app/application/widgets/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Create Account'),
      body: BlocProvider<SignUpCubit>(
        create: (context) => SignUpCubit(),
        child: const SignUpForm(),
      ),
    );
  }
}
