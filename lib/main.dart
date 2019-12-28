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
      {
        "questionText": "What's your favorite color?",
        "answers": ["Black", "Red", "Green", "White"]
      },
      {
        "questionText": "What's your favorite animal?",
        "answers": ["Rabbit", "Snake", "Elephent", "Lion"]
      },
      {
        "questionText": "How's your favorite instructor?",
        "answers": ["Max", "Max", "Max", "Max"]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]["questionText"],
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
