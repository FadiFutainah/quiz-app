import 'package:flutter/material.dart';
import 'package:flutter_app/application/models/drop_down_choice.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'drop_down_choice_cubit.dart';

class DropDownChioceButton extends StatelessWidget {
  const DropDownChioceButton({
    super.key,
    required this.text,
    required this.choices,
    required this.onChanged,
  });

  final List<DropDownChoice> choices;
  final String text;
  final void Function(int?)? onChanged;

  List<DropdownMenuItem<int>> _getItems() => choices
      .map((e) => DropdownMenuItem<int>(value: e.value, child: Text(e.name)))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(text, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Center(
            child: BlocBuilder<DropDownChoiceCubit, int>(
              builder: (context, state) {
                return DropdownButton<int>(
                  value: state,
                  items: _getItems(),
                  onChanged: (value) {
                    onChanged!(value);
                    context.read<DropDownChoiceCubit>().chooseValue(value!);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
