import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function calledFunction;
  final String answerText;

  Answer(this.calledFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: calledFunction,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
