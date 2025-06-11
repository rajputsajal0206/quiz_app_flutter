import 'package:flutter/material.dart';

class ElevatedAnswerOption extends StatelessWidget {
  const ElevatedAnswerOption(
      {super.key, required this.answerText, required this.onClick});

  final String answerText;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
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
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
