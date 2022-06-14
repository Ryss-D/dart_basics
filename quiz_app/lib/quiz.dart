import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<
                String>) // we use ... "the spread operator" to add new element to children list
            .map((answer) {
          return Answer(
            answerOptions: answer,
            selectHandler: answerQuestion,
          );
        }).toList() // we use toList() to be able to add the values to children list
      ],
    );
  }
}
