import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_flutter/quiz_summary/quiz_summary.dart';
import 'data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.selectedAnswerList, required this.restartQuiz});

  final List<String> selectedAnswerList;
  final void Function() restartQuiz;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summaryList =
        _getQuizSummary(selectedAnswerList);

    final correctAnswersNumber = summaryList.where((data) {
      return data['selected-answer'] == data['correct-answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answered $correctAnswersNumber out of ${summaryList.length} questions Correctly',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuizSummary(summaryList: summaryList),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restartQuiz,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, Object>> _getQuizSummary(
  List<String> selectedAnswerList,
) {
  final List<Map<String, Object>> summaryList = [];

  for (var i = 0; i < selectedAnswerList.length; i++) {
    summaryList.add({
      'question-index': i,
      'question': questionsList[i].question,
      'selected-answer': selectedAnswerList[i],
      'correct-answer': questionsList[i].multipleOptions[0],
    });
  }

  return summaryList;
}
