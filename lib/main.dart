import 'package:flutter/material.dart';

import './question.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}
class MyAppState extends State<MyApp>{
  int quizIndex=0;

  void printAnswer(){
    setState(() {
      quizIndex= quizIndex+1;
      if(quizIndex >1){
        quizIndex=0;
      }
    });
    print("hello world"+quizIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    var quiz=[
      "Why are Quite ?",
      "Talk to me?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Column(
          children:[
            Question(quiz[quizIndex]),
            ElevatedButton(
              child: Text('I dont know'),
              onPressed: printAnswer,
            ),
            ElevatedButton(
              child: Text('You caused it'),
              onPressed:() => print('pressed 2'),
            ),
            ElevatedButton(
              child: Text('i caused it'),
              onPressed:() {
                    print('pressed 3');
              },
            )
          ],
        ),
      ),
    );
  }
}
