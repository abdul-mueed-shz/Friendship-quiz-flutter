import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectQues;
  final String ansText;
  Answer(this.selectQues, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 3.0),
      child: RaisedButton(
        textColor: Colors.white,
        // ignore: prefer_const_constructors
        child: Text(ansText),
        onPressed: () {
          selectQues();
        },
        color: Colors.cyan[800],
      ),
    );
  }
}
