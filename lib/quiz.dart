import 'package:flutter/material.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //We use container to give styling and gradient to the layout
        //Const keyword can't be used before CONTAINER widget
        //CONTAINER widgets don't occupy any space of it's own, rather it takes space as per it's child
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
            //We are calling StartScreen with const keyword because when we defined the class
            //we also declared a constructor for the Class with const keyword
            child: const StartScreen()),
      ),
    );
  }
}
