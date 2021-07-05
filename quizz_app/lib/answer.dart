import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function calledFunction;

  Answer(this.calledFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              child: Text('Choice 1'),
              onPressed: calledFunction,
              color: Colors.blue ,
            ),
    );
  }
}