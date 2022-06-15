import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int score;

  Score(this.score);

  String get scorePhrase {
    String scoreText;
    if (score <= 2) {
      scoreText = 'Less than two points :(';
    } else if (score <= 1) {
      scoreText = 'Less than one point :((';
    } else {
      scoreText = 'Wird scoreee :(((';
    }
    return scoreText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        scorePhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
