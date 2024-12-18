import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text('Start Quiz and Test Yourself !',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            maxLines: 2,
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(onPressed: (){},
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Now',
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
