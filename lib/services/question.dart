import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String QuestionText;
  // ignore: non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Questions({required this.QuestionText});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20.0),
        child: Text(
          QuestionText,
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 30, color: Colors.black),
          textAlign: TextAlign.center,
        ));
  }
}
