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
        'questionText': 'What\' your favorite color?',
        'Answers': ['Black', 'Yellow', 'Blue', 'Grey']
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'Answers': ['Squirrel', 'Lion', 'Duck', 'Unicorn']
      },
      {
        'questionText': 'Who\s your favorite Bebou',
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
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['Answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
