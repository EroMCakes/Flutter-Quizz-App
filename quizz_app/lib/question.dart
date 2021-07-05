import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,

      ),
    );
  }
}