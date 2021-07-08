import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are still a little piece of cuteness';
    }
    else if (resultScore <= 18)
    {
      resultText = 'Not too shaby, I love you !';
    }
    else if (resultScore == 30)
    {
      resultText = 'You are amazing I LOVE YOU !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
