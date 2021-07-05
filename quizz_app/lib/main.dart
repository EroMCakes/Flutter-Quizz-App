import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question Text': 'What\' your favorite color?',
        'Answers': ['Black', 'Yellow', 'Blue', 'Grey']
      },
      {
        'question Text': 'what\'s your favorite animal?',
        'Answers': ['Squirrel', 'Lion', 'Duck', 'Unicorn']
      },
      {
        'question Text': 'Who\s your favorite Bebou',
        'Answers': ['BEBOU', 'BEBOU', 'BEBOU', 'BEBOU']
      }
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quizz App')),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['question Text'],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
