import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.correctQuestions,
      required this.incorrectQuestions});

  final List<int> correctQuestions;
  final List<int> incorrectQuestions;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height * 0.3);
    print(MediaQuery.of(context).size.height * 0.5);
    print(MediaQuery.of(context).size.height * 0.1);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    TextStyle resultTextStyle = const TextStyle(
        fontSize: 24,
        color: Color.fromRGBO(79, 122, 106, 1),
        fontWeight: FontWeight.w500);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: double.infinity,
            child: const SizedBox(
              child: Text(
                'Quiz Sonucu',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                          color: Color.fromRGBO(132, 162, 151, 1),
                          offset: Offset(3, 3),
                          blurRadius: 8)
                    ]),
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: double.infinity,
          margin: const EdgeInsets.all(12),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Doğru soru sayısı: ${correctQuestions.length},',
                    style: resultTextStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Yanlış soru sayısı: ${incorrectQuestions.length}',
                    style: resultTextStyle,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Doğru olan soru numaraları: ${correctQuestions.join(', ')}',
                    style: resultTextStyle,
                  ),
                  Text(
                    'Yanlış olan soru numaraları: ${incorrectQuestions.join(', ')}',
                    style: resultTextStyle,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(79, 122, 106, 1),
                                elevation: 12),
                            onPressed: () {
                              exit(0);
                            },
                            child: const Text(
                              'Uygulamayı Kapat',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
