import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer_button.dart';
import 'package:quiz_app_flutter/data/questions.dart';

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
    final currentQuestion = questionsList[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            currentQuestion.question,
            maxLines: 2,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.multipleOptions.map((answer) {
            return ElevatedAnswerOption(
              answerText: answer,
              onClick: () {},
            );
          }),
          //here "multipleOptions" is a list amd every item of this list will be passed to map function as an argument one by one
          //the function defined in map is executed on every value passed as argument in map function
          // map will accept values of list and perform actions on it and return a new list
          //... is used because column accepts only List of Widget but map tries to add list to a list so spread(...) will extract the value from list

          // currentQuestion.multipleOptions.map((answer){
          //   return ElevatedAnswerOption(
          //     answerText: answer,
          //     onClick: () {},
          //   ),
          // })
        ],
      ),
    );
  }
}
