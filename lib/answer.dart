
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  // final String answerText;
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold)
        ),
        child: Text("answer 1"),
        onPressed:() {
          selectHandler;
        },
      ),
    );
  }
}
