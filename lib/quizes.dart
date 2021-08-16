import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

class Quizes extends StatelessWidget {
  final int quizIndex;
  final List<Map<String, Object>> quiz;
  final VoidCallback selectHandler;
  Quizes({
    required this.quiz,
    required this.quizIndex,
    required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Question(
          quiz[quizIndex]['quiz'] ?.toString() ?? '',
        ),
        ...( quiz[quizIndex]['answer'] as List<String> )
            .map((answer){
          return Answer(selectHandler,answer);
        }).toList(),
      ],
    );
  }
}


