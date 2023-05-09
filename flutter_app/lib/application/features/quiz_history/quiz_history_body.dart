import 'package:flutter/material.dart';
import 'package:flutter_app/application/features/quiz_history/quiz_history_cubit.dart';
import 'package:flutter_app/application/widgets/custom_app_bar.dart';
import 'package:flutter_app/application/widgets/loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizHistoryBody extends StatelessWidget {
  const QuizHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Admin',
      ),
      body: BlocBuilder<QuizHistoryCubit, QuizHistoryState>(
        builder: (context, state) {
          if (state is QuizHistorySuccess) {
            return ListView.separated(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(height: 20),
                    Text('Game ${index + 1}'),
                    Text(state.data[index].duration!),
                    Text(state.data[index].result!),
                    Text(state.data[index].url!),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(thickness: 2),
            );
          }
          return const LoadingWidget();
        },
      ),
    );
  }
}
