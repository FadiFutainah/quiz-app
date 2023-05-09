import 'package:flutter/material.dart';

class QuestionInfo extends StatelessWidget {
  const QuestionInfo({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text(title, textAlign: TextAlign.center),
        ),
        Expanded(
          child: Text(text, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
