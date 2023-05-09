import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/admin/dashboard_cubit.dart';
import 'package:flutter_app/application/widgets/custom_app_bar.dart';
import 'package:flutter_app/application/widgets/loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DashboardCubit, DashboardState>(
      listener: (context, state) {
        if (state is SignedOutSuccessfuly) {
          Fluttertoast.showToast(msg: 'sign out successfully');

          context.go('/');
        }
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Admin',
          leading: IconButton(
            onPressed: context.read<DashboardCubit>().signOut,
            icon: const Icon(Icons.logout_outlined),
          ),
        ),
        body: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            if (state is DashboardSuccess) {
              return ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.data[index].email!),
                    subtitle: Text(state.data[index].role!),
                    onTap: () {
                      context.push('/dashboard/user',
                          extra: state.data[index].id);
                    },
                  );
                },
              );
            }
            return const LoadingWidget();
          },
        ),
      ),
    );
  }
}
