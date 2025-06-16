import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex(
      {super.key, required this.questionIndex, required this.isAnswerCorrect});

  final int questionIndex;
  final bool isAnswerCorrect;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: isAnswerCorrect
          ? const Color.fromARGB(255, 150, 198, 241)
          : const Color.fromARGB(255, 249, 133, 241),
      child: Center(
        child: Text(
          questionIndex.toString(),
          style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 22, 2, 56),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
