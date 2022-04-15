import 'package:flutter/material.dart';

class Restult extends StatelessWidget {
  final Total_score;
  final Function() ResetQuize;

  Restult(this.Total_score, this.ResetQuize);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          alignment: Alignment.center,
          child: Text("Your score is $Total_score",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
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
          onPressed: ResetQuize,
        )
      ],
    );
  }
}
