import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

void main(List<String> args) => runApp(QuizApp());

class QuizApp extends StatefulWidget {

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;

  void _answersMain() {
    setState(() {
    _questionIndex++;
    //print("Answer 1 chosen");
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favourite color?",
      "What's your favourite pet?",
      "Which is your favourite between Android & iPhone?",
      "Are you a day or night person?",
      "Are you an introvert or extrovert",
      "Continental or Local dishes?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personality App"),
        ),
        body: Column(
          children: [
            Questions(
              questions[_questionIndex],
            ),
            Answers(_answersMain),
            Answers(_answersMain),
            Answers(_answersMain),
            Answers(_answersMain),
          ],
        ),
      ),
    );
  }
}
