import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int score;
  VoidCallback resetHandler;

  Score(this.score, this.resetHandler);

  String get scorePhrase {
    String scoreText;
    if (score <= 2) {
      scoreText = 'Less than two points :(';
    } else if (score <= 1) {
      scoreText = 'Less than one point :((';
    } else {
      scoreText = 'Weird score :(((';
    }
    return scoreText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            scorePhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: resetHandler, child: Text("Restart button"))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
