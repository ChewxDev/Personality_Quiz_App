import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  
  final Function()? selectAnswer;

  Answers(this.selectAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
       child: RaisedButton(
        child: Text("Answer 1"),
        onPressed: selectAnswer,
      ),
    );
  }
}