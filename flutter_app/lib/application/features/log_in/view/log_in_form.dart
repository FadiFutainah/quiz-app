import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/log_in/log_in_cubit.dart';
import 'package:flutter_app/application/widgets/input_field.dart';
import 'package:flutter_app/application/widgets/loading_widget.dart';
import 'package:flutter_app/application/widgets/submit_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    double height = ScreenUtil().screenHeight;
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogInFailed) {
          Fluttertoast.showToast(msg: state.message);
        } else if (state is LogInSuccess) {
          context.go('/');
        }
      },
      builder: (context, state) {
        if (state is LogInLoading) {
          return const LoadingWidget();
        }
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.3),
              BlocBuilder<LogInCubit, LogInState>(
                builder: (context, state) {
                  LogInCubit cubit = context.read<LogInCubit>();
                  return InputField(
                    formValidator: cubit.emailValidator,
                    keyboard: TextInputType.emailAddress,
                    icon: Icons.email,
                  );
                },
              ),
              const SizedBox(height: 10),
              BlocBuilder<LogInCubit, LogInState>(
                builder: (context, state) {
                  LogInCubit cubit = context.read<LogInCubit>();
                  return InputField(
                    formValidator: cubit.passwordlValidator,
                    icon: Icons.lock,
                    suffixIcon: cubit.getSuffixIcon(),
                    onSuffixIconPressed: cubit.togglePasswordVisibility,
                    isVisible: state.isPasswordVisible,
                  );
                },
              ),
              SizedBox(height: height * 0.1),
              SubmitButton(
                title: 'Login',
                onPressed: context.read<LogInCubit>().submit,
              ),
              TextButton(
                onPressed: () {
                  context.push('/sign-up');
                },
                child: const Text('create account'),
              ),
            ],
          ),
        );
      },
    );
  }
}
