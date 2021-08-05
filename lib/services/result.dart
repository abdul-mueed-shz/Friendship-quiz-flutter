import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetQuiz;
  Result({required this.finalScore, required this.resetQuiz});

  String get resultPhrase {
    String finalText;
    if (finalScore == 12) {
      finalText = 'We must be good Friends <3 ';
    } else if (finalScore >= 8) {
      finalText = 'We must like each other :) ';
    } else if (finalScore <= 5) {
      finalText = 'You know me!!!';
    } else {
      finalText = "I don't like you :(";
    }
    return finalText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30.0,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 50.0),
          margin: EdgeInsets.all(15.0),
          color: Colors.cyan[600],
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 2.3,
        ),
        Container(
          width: 150.0,
          margin: EdgeInsets.all(40.0),
          child: FlatButton(
            onPressed: () {
              resetQuiz();
            },
            child: const Text(
              'Restart Test!',
              style: TextStyle(fontSize: 20.0),
            ),
            color: Colors.cyan[800],
            textColor: Colors.white,
          ),
        )
      ],
    );
  }
}
