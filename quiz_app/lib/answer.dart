import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //final Map answerOptions;
  final String answerOptions;
  //final Function selectHandler; isn't been used because out function does't take arguments o return anything
  final VoidCallback selectHandler;

  Answer({required this.answerOptions, required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
          child: Text(answerOptions),
          onPressed: selectHandler,
        ));
  }
}
