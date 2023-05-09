import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/admin/dashboard_cubit.dart';
import 'package:flutter_app/application/widgets/loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state is DashboardSuccess) {
          return ListView.builder(
            itemCount: state.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.data[index].email!),
                subtitle: Text(state.data[index].role!),
                onTap: () {
                  context.push('dashboard/${state.data[index].id}');
                },
              );
            },
          );
        }
        return const LoadingWidget();
      },
    );
  }
}
