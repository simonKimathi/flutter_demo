import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);
  // var quiz=[
  //   "Why are Quite ?",
  //   "Talk to me?"
  // ];

  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        child:Text(
          questionText,
          style: TextStyle(
              color: Colors.red,
              fontSize: 28
          ),
          textAlign: TextAlign.center,
        ),
    );
  }
}