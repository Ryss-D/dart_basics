import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  static const questions = [
    {
      'questionText': 'question 1',
      'answers': ['answer1', 'answer2', 'answer3']
    },
    {
      'questionText': 'question 2',
      'answers': ['answer1', 'answer2', 'answer3']
    },
    {
      'questionText': 'question 3',
      'answers': ['answer1', 'answer2', 'answer3']
    },
  ];
  void _answerQuestion() {
    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answers'] as List<
                          String>) // we use ... "the spread operator" to add new element to children list
                      .map((answer) {
                    return Answer(
                      answerOptions: answer,
                      selectHandler: _answerQuestion,
                    );
                  }).toList() // we use toList() to be able to add the values to children list
                ],
              )
            : Center(
                child: Text("You did it!"),
              ),
      ),
    );
  }
}

//? whit question mark we allow null value
//! whit exclamation mark we ensure that the value cant take a null value