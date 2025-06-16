import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_flutter/quiz_summary/question_index.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.summaryData});

  final Map<String, Object> summaryData;

  @override
  Widget build(BuildContext context) {
    final bool isAnswerCorrect =
        summaryData['selected-answer'] == summaryData['correct-answer'];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndex(
              questionIndex: (summaryData['question-index'] as int) + 1,
              isAnswerCorrect: isAnswerCorrect),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summaryData['question'].toString(),
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                summaryData['selected-answer'].toString(),
                style: GoogleFonts.lato(
                    color: isAnswerCorrect
                        ? const Color.fromARGB(255, 202, 171, 252)
                        : Colors.redAccent,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                summaryData['correct-answer'].toString(),
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 181, 254, 246),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
