import 'package:flutter/material.dart';

import './quizz.dart';

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
  
  @override
  Widget build(BuildContext context) {
    final _questions = const [
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

    var _questionIndex = 0;

    void _answerQuestion() {
      setState(() {
        _questionIndex++;
      });

      print(_questionIndex);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quizz App')),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
            : Center(
                child: Text("you did it!"),
              ),
      ),
    );
  }
}
