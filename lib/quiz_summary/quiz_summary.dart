import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/quiz_summary/summary_item.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary({super.key, required this.summaryList});

  final List<Map<String, Object>> summaryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryList.map((data) {
            return SummaryItem(
              summaryData: data,
            );
          }).toList(),
        ),
      ),
    );
  }
}
