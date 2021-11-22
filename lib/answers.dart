import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  
  final Function()? selectAnswer;
  final String singleAnswer;

  Answers(this.selectAnswer, this.singleAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
       child: RaisedButton(
        child: Text(singleAnswer),
        onPressed: selectAnswer,
      ),
    );
  }
}