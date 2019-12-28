import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clickHandler;
  final String answerText;

  Answer(this.clickHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: clickHandler,
        color: Colors.blue,
      ),
    );
  }
}
