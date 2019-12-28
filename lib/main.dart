import 'package:flutter/material.dart';
import "package:quiz_app/quiz.dart";
import "package:quiz_app/result.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final questions = const [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: _questionIndex >= questions.length
            ? Result()
            : Quiz(questions[_questionIndex], _answerQuestion),
      ),
    );
  }
}
