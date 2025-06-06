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
  Widget? activeScreen;


  //initState method is called before execution of build method and post the memory allocation to objects and variables
  @override
  void initState() {
    //in StartScreen we are passing function as argument and without paranthesis()
    // Not calling with paranthesis as it will execute it
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
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
          child: activeScreen,
        ),
      ),
    );
  }
}

// setState(() {
//
// });
