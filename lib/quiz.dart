import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/question_screen.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

//_QUIZSTATE class confirms that this is private and can be used only in this quiz.dart
class _QuizState extends State<Quiz> {
  //the below statement confirms that activeScreen widget can be null or can have a widget as a value
  //Widget? activeScreen;
  var activeScreen = 'start-screen';

  //initState method is called before execution of build method and post the memory allocation to objects and variables
  // @override
  // void initState() {
  //   //in StartScreen we are passing function as argument and without paranthesis()
  //   // Not calling with paranthesis as it will execute it
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    //ternary operation will halp us skip initState here
    // final widgetScreen = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionScreen();

    //Here we can't use var keyword as when we try to assign QuestionScreen to widgetScreen it throws error
    // as due to var widgetScreen wants to accept values of type StartScreen because it will treat StartScreen Class as a data type
    Widget widgetScreen = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      widgetScreen = const QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        //We use container to give styling and gradient to the layout
        //Const keyword can't be used before CONTAINER widget
        //CONTAINER widgets don't occupy any space of it's own, rather it takes space as per it's child
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          //We are calling StartScreen with const keyword because when we defined the class
          //we also declared a constructor for the Class with const keyword
          child: widgetScreen,
        ),
      ),
    );
  }
}

// setState(() {
//
// });

// Explaining how ternary works -->
//1. activeScreen variable will have initial value as 'start-screen' so the value in widgetScreen returns true and StartScreen is loaded
//2. When button is pressed, so switchScreen function is called and activeScreen value changes and build method is called and widgetScreen value returns false and QuestionScreen IS LOADED
