import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class NumberInputField extends StatelessWidget {
  const NumberInputField({
    super.key,
    required this.min,
    required this.max,
    required this.value,
    required this.onChanged,
    required this.text,
  });

  final double min;
  final double max;
  final double value;
  final void Function(double) onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: SpinBox(
              min: min,
              max: max,
              value: value,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
