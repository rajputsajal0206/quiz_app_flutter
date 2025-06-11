import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            //here color defined will take over the colors of images
            //Color.fromARGB(   int a,   int r,   int g,   int b, )
            //int a--> it controls the opacity of the image where 0 is complete transparent and 255 being complete opeque
            //r,g,b --> controls red, green and blue color
            color: const Color.fromARGB(200, 255, 255, 255),
          ),
          //Apart from above steps we can also use OPACITY class to wrap images class
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Start Quiz and Test Yourself !',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            //In place of text we use label to give title to the button
            label: const Text(
              'Start Now',
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
