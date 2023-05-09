import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/log_in/log_in_cubit.dart';
import 'package:flutter_app/application/widgets/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'log_in_form.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Login'),
      body: BlocProvider<LogInCubit>(
        create: (context) => LogInCubit(),
        child: const LogInForm(),
      ),
    );
  }
}
