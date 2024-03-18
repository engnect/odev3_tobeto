import 'package:flutter/material.dart';
import 'package:odev3/questions.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz App',
          style: TextStyle(
            color: Color.fromARGB(255, 223, 223, 223),
            fontSize: 24,
            fontWeight: FontWeight.w600,
            shadows: [
              Shadow(
                  color: Color.fromRGBO(132, 162, 151, 1),
                  offset: Offset(3, 3),
                  blurRadius: 8)
            ],
          ),
        ),
        shape: const Border(
            bottom:
                BorderSide(color: Color.fromRGBO(167, 189, 181, 1), width: 4)),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(79, 122, 106, 1),
      ),
      body: Container(
        color: const Color.fromRGBO(250, 243, 250, 1),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [QuestionScreen()],
        ),
      ),
    );
  }
}
