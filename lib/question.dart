import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final Questions;
  final questionIndex;

  Question(this.Questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        Questions[questionIndex]['q'],
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
