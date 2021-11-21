import 'package:flutter/material.dart';

void main(List<String> args) => runApp(QuizApp());

class QuizApp extends StatelessWidget {

  int questionIndex = 0;

  void answers() {
    questionIndex++;
    print("Answer 1 chosen");
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
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answers,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answers,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answers,
            ),
            RaisedButton(
              child: Text("Answer 4"),
              onPressed: answers,
            ),
          ],
        ),
      ),
    );
  }
}
