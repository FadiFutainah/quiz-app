import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/sign_up/sign_up_cubit.dart';
import 'package:flutter_app/application/widgets/input_field.dart';
import 'package:flutter_app/application/widgets/loading_widget.dart';
import 'package:flutter_app/application/widgets/submit_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    double height = ScreenUtil().screenHeight;
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpFailed) {
          Fluttertoast.showToast(msg: state.message);
        } else if (state is SignUpSuccess) {
          context.go('/');
        }
      },
      builder: (context, state) {
        if (state is SignUpLoading) {
          return const LoadingWidget();
        }
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.3),
              BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  SignUpCubit cubit = context.read<SignUpCubit>();
                  return InputField(
                    formValidator: cubit.emailValidator,
                    keyboard: TextInputType.emailAddress,
                    icon: Icons.email,
                  );
                },
              ),
              const SizedBox(height: 10),
              BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  SignUpCubit cubit = context.read<SignUpCubit>();
                  return InputField(
                    formValidator: cubit.passwordlValidator,
                    icon: Icons.lock,
                    isVisible: false,
                  );
                },
              ),
              const SizedBox(height: 10),
              BlocBuilder<SignUpCubit, SignUpState>(
                builder: (context, state) {
                  SignUpCubit cubit = context.read<SignUpCubit>();
                  return InputField(
                    formValidator: cubit.confirmPasswordlValidator,
                    icon: Icons.lock,
                    isVisible: false,
                  );
                },
              ),
              SizedBox(height: height * 0.1),
              SubmitButton(
                title: 'Sign Up',
                onPressed: context.read<SignUpCubit>().submit,
              ),
            ],
          ),
        );
      },
    );
  }
}
