import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clickHandler;

  Answer(this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text("Answer 1"),
        textColor: Colors.white,
        onPressed: clickHandler,
        color: Colors.blue,
      ),
    );
  }
}
