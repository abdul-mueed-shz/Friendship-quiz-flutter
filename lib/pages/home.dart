import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/services/quiz.dart';
import 'package:quizapp/services/result.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final _questions = const [
    {
      'question': "What's my favorite game type?",
      'answers': [
        {'answerText': 'Battle Royale', 'Score': 1},
        {'answerText': 'Arcade', 'Score': 3},
        {'answerText': 'Arena', 'Score': 2},
        {'answerText': 'Single Player', 'Score': 4},
      ],
    },
    {
      'question': "What's my favorite game genre?",
      'answers': [
        {'answerText': 'Action', 'Score': 2},
        {'answerText': 'Adventure', 'Score': 1},
        {'answerText': 'Action Adventure', 'Score': 4},
        {'answerText': 'Horror', 'Score': 3},
      ],
    },
    {
      'question': "What's my favorite game studio?",
      'answers': [
        {'answerText': 'Rockstar Studios', 'Score': 4},
        {'answerText': 'EA', 'Score': 1},
        {'answerText': 'Ubisoft', 'Score': 3},
        {'answerText': 'Square Enix', 'Score': 2},
      ],
    },
  ];

  var _index = 0;
  int _totalScore = 0;
  void _questionIndex(int score) {
    _totalScore += score;
    setState(() {
      _index++;
    }); // ignore: avoid_print
  }

  void _resetQuiz() => setState(() {
        _index = 0;
        _totalScore = 0;
      });

  @override
  Widget build(BuildContext context) {
    //print(_totalScore);
    //print(_questions[_index]['question'].runtimeType);
    //print(_questions[_index]['answers'].runtimeType);
    return Scaffold(
      //backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: const Text(
          "FriendShip Test",
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan[600],
      ),
      body: _index < _questions.length
          ? Quiz(
              index: _index,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(finalScore: _totalScore, resetQuiz: _resetQuiz),
    );
  }
}
