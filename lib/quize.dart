import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quize extends StatelessWidget {
  final Questions;
  final questionIndex;
  final AnswerButton;

  Quize(this.Questions, this.questionIndex, this.AnswerButton);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(Questions, questionIndex),
        ...(Questions[questionIndex]['a']).map((answer) {
          return Answer(() => AnswerButton(answer['t_f']), answer['ans']);
        }).toList()
      ],
    );
  }
}
