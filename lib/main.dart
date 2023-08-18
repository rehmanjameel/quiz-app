import 'package:adv_basics/quiz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // Scaffold can be used to set up the screen that will be displayed to the user
  runApp(
    const Quiz()
  );
}

// class FlutterQuizApp extends StatefulWidget {
//   const FlutterQuizApp({Key? key}) : super(key: key);
//
//   @override
//   State<FlutterQuizApp> createState() => _FlutterQuizAppState();
// }
//
// class _FlutterQuizAppState extends State<FlutterQuizApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Image.asset('assets/images/quiz-logo.png',
//         width: 200,
//         ),
//         const Text(
//             "Learn Flutter the fun way!"
//         ),
//
//         TextButton(onPressed: startQuiz,
//             child: const Text("Start Quiz"),
//         )
//       ],
//     );
//
//   }
//
//   void startQuiz() {
//   }
// }
