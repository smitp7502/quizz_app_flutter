import 'package:flutter/material.dart';
import 'package:quize_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int Total_score = 0;

  void AnswerButton(int n) {
    Questions[questionIndex]['a'][n]['t_f'] == 't'
        ? Total_score += 1
        : print("score");
    setState(() {
      questionIndex += 1;
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
          style: TextStyle(fontSize: 28, color: Colors.amber),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: questionIndex < Questions.length
          ? Column(
              children: [
                Question(Questions, questionIndex),
                RaisedButton(
                  child: Text(Questions[questionIndex]['a'][0]['ans']),
                  onPressed: () => AnswerButton(0),
                ),
                RaisedButton(
                  child: Text(Questions[questionIndex]['a'][1]['ans']),
                  onPressed: () => AnswerButton(1),
                ),
                RaisedButton(
                    child: Text(Questions[questionIndex]['a'][2]['ans']),
                    onPressed: () => AnswerButton(2)),
                RaisedButton(
                    child: Text(Questions[questionIndex]['a'][3]['ans']),
                    onPressed: () => AnswerButton(3)),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Your score is $Total_score",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
                ),
                RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      "Reset the Quize",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        questionIndex = 0;
                        Total_score = 0;
                      });
                    })
              ],
            ),
    ));
  }
}
