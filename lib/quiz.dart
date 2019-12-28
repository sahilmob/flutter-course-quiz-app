import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart';

class Quiz extends StatelessWidget {
  final Map question;
  final Function answerQuestion;

  Quiz(this.question, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Question(
            question["questionText"],
          ),
          ...question["answers"]
              .map((answer) => Answer(answerQuestion, answer))
              .toList()
        ],
      ),
    );
  }
}
