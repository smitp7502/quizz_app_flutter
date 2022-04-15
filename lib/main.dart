import 'package:flutter/material.dart';
import 'package:quize_app/quize.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int Total_score = 0;

  void AnswerButton(var n) {
    n == 't' ? Total_score += 1 : print("score");
    setState(() {
      questionIndex += 1;
    });
  }

  void ResetQuize() {
    setState(() {
      questionIndex = 0;
      Total_score = 0;
    });
  }

  List<Map> Questions = [
    {
      'q': 'What is the national animal of India',
      'a': [
        {'ans': 'Tiger', 't_f': 't'},
        {'ans': 'Lion', 't_f': 'f'},
        {'ans': 'Hores', 't_f': 'f'},
        {'ans': 'Elephant', 't_f': 'f'}
      ]
    },
    {
      'q': 'What is the national bird of India',
      'a': [
        {'ans': 'Parrot', 't_f': 'f'},
        {'ans': 'Sparoww', 't_f': 'f'},
        {'ans': 'Kivi', 't_f': 'f'},
        {'ans': 'Pecock', 't_f': 't'}
      ]
    },
    {
      'q': 'What is the national sport of India',
      'a': [
        {'ans': 'Cricket', 't_f': 'f'},
        {'ans': 'Rugby', 't_f': 'f'},
        {'ans': 'Hockey', 't_f': 't'},
        {'ans': 'Football', 't_f': 'f'}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: const Text(
          "Chose the answer!!",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: questionIndex < Questions.length
          ? Quize(Questions, questionIndex, AnswerButton)
          : Restult(Total_score, ResetQuize),
    ));
  }
}
