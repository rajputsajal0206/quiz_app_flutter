import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
            color: const Color.fromARGB(150, 255, 255, 255),
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
          OutlinedButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.arrow_right_alt),
            //In place of text we use label to give title to the button
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
