import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final AnswerButton;
  final questionText;

  Answer(this.AnswerButton, this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(questionText),
        onPressed: AnswerButton,
      ),
    );
  }
}
