import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState((){
      questionIndex++;
    });
  
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\' your favorite color?',
      'what\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Choice 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Choice 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Choice 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
