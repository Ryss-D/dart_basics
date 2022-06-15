import 'package:flutter/material.dart';

import './quiz.dart';
import './score.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  static const _questions = [
    {
      'questionText': 'question 1',
      'answers': [
        {'text': 'answer1', 'score': 1},
        {'text': 'answer2', 'score': 1},
        {'text': 'answer3', 'score': 1},
      ]
    },
    {
      'questionText': 'question 2',
      'answers': [
        {'text': 'answer1', 'score': 1},
        {'text': 'answer2', 'score': 1},
        {'text': 'answer3', 'score': 1},
      ]
    },
    {
      'questionText': 'question 3',
      'answers': [
        {'text': 'answer1', 'score': 1},
        {'text': 'answer2', 'score': 1},
        {'text': 'answer3', 'score': 1},
      ]
    },
  ];
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      setState(
        () {
          _questionIndex = 0;
        },
      );
    }
  }

//hot reload didn't restart states
  @override
  Widget build(BuildContext context) {
    // we can assign const to object or to the values; object name is the reference to values on memory, like a Go pointer
    //ieg var question = const [1,2,3] // having the value all the advantages of using a const; it means we can modify the pointer(reassign a value to variable) of question but no te list [1,2,3]
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      // logical expression ? result if is true : result if is false
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Score(_totalScore, _resetQuiz),
    ));
  }
}

//? whit question mark we allow null value
//! whit exclamation mark we ensure that the value cant take a null value