import 'package:flutter/material.dart';

class ElevatedAnswerOption extends StatelessWidget {
  const ElevatedAnswerOption(
      {super.key, required this.answerText, required this.onClick});

  final String answerText;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          answerText,
          maxLines: 2,
        ));
  }
}
