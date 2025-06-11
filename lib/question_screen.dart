import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer_button.dart';
import 'package:quiz_app_flutter/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

//Widget Class
class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key, required this.onSelectAnswer});

  void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
  // State<QuestionScreen> createState() {
  //    return  _QuestionScreenState();
  // }
}

//State Class
class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  void selectedAnswer(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questionsList[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              currentQuestion.question,
              maxLines: 2,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledList().map((answer) {
              return ElevatedAnswerOption(
                answerText: answer,
                onClick: () {
                  selectedAnswer(answer);
                },
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
      ),
    );
  }
}
