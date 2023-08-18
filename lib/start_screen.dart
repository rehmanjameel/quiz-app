// this screen is different because as a good practice custom widgets should be in their screens

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          const SizedBox(height: 80,),

          const Text('The Amazing Quiz App!',
            style: TextStyle(
                color: Colors.white
            ),
          ),
          const SizedBox(height: 30,),

          OutlinedButton.icon(
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(
                  width: 1.0,
                  color: Colors.white
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
