import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
  // State<QuestionScreen> createState() {
  //    return  _QuestionScreenState();
  // }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Text('The Question is ...',
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }
}
