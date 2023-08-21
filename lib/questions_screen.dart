import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {

  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // vertical axis
          crossAxisAlignment: CrossAxisAlignment.stretch, // horizontal axis
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),

            ...currentQuestion.getShuffledAnswers().map((answer) { // '...' used for spreading values of list
              return AnswerButton(answerText: answer, onTap: answerQuestion,);
            }) // using dynamic answer buttons instead of hardcoded buttons
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   onTap: () { },
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   onTap: () { },
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   onTap: () { },
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   onTap: () { },
            // ),
          ],
        ),
      ),
    );
  }
}
