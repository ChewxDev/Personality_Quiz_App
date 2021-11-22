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
    var questions = [
      {
      "questionText": "What's your favourite primary or secondary color?",
      "answerText": ["Yellow", "Red", "Blue", "Green", "Orange", "Purple"],
      },
      {
      "questionText": "What's your favourite pet?",
      "answerText": ["Dog", "Cat", "Bird", "Reptiles", "Rabbits","Others"],
      },
      {
      "questionText": "Which is your favourite Android & iPhone?",
      "answer": ["iPhone", "Android"],
      },
      {
      "questionText": "Are you a day or night person?",
      "answerText": ["Day", "Night"],
      },
      {
      "questionText": "Are you an introvert, extrovert or ambivert",
      "answerText": ["Introvert", "Extrovert", "Ambivert"],
      },
      {
      "questionText": "Which do you prefer Continental or Local dishes?",
      "answerText": ["Continental", "Local"],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personality App"),
        ),
        body: Column(
          children: [
            Questions(
              questions[_questionIndex]['questionText'] as String,
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
