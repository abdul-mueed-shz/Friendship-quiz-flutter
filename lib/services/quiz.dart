import 'package:flutter/material.dart';
import 'package:quizapp/services/question.dart';
import 'package:quizapp/services/answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function questionIndex;
  Quiz({
    required this.index,
    required this.questions,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50.0,
        ),
        Questions(
          QuestionText: questions[index]['question'].toString(),
        ),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => questionIndex(answer['Score']),
              answer['answerText'].toString());
        }) //.toList(),
      ],
    );
  }
}
