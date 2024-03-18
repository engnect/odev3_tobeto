import 'dart:io';

import 'package:flutter/material.dart';
import './data/question_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  final int lenOfQuestions = questions.length;
  int score = 0;
  String selectedAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 12),
          alignment: Alignment.center,
          child: Text(
            'Soru ${currentQuestionIndex + 1}/${questions.length}',
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 180,
          width: double.infinity,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(79, 122, 106, 1),
              border: Border.all(
                  color: const Color.fromRGBO(167, 189, 181, 1),
                  width: 4,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            questions[currentQuestionIndex].question,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView.builder(
              itemCount: questions[currentQuestionIndex].answers.length,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromRGBO(132, 162, 151, 1))),
                      onPressed: () {
                        setState(() {
                          selectedAnswer =
                              questions[currentQuestionIndex].answers[index];
                          score = checkScore(
                              score, selectedAnswer, currentQuestionIndex);
                        });

                        checkLastPage(context);
                      },
                      child: Text(
                        questions[currentQuestionIndex].answers[index],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(
                                color: Color.fromRGBO(79, 97, 91, 1),
                                offset: Offset(3, 3),
                                blurRadius: 8)
                          ],
                        ),
                      )),
                );
              }),
        ),
        const PopScope(canPop: false, child: Text('')),
      ],
    );
  }

  void checkLastPage(BuildContext context) {
    if (currentQuestionIndex == lenOfQuestions - 1) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Yarışma Bitti!'),
              content: Text('Skorunuz: $score'),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      exit(0);
                    },
                    child: const Text('Kapat')),
              ],
            );
          });
    } else {
      currentQuestionIndex++;
    }
  }

  int checkScore(int score, String selectedAnswer, int currentIndex) {
    if (selectedAnswer == questions[currentIndex].correctAns) {
      score++;
    } else {
      score--;
    }
    return score;
  }
}
