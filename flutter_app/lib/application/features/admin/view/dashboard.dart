import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/admin/dashboard_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dashboard_body.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: const DashboardBody(),
    );
  }
}
