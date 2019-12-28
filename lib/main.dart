import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import "package:quiz_app/answer.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion)
          ],
        ),
      ),
    );
  }
}
