import 'package:flutter/material.dart';

import './question.dart';
import './quizes.dart';
import './answer.dart';
import './results.dart';

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
  int _quizIndex=0;
  var quiz=[
    {'quiz':'Whats your favourite color?',
      'answer':['red','blue','green','other']
    },
    {'quiz':'Whats your favourite food?',
      'answer':['chicken','chips','greens','beef']
    },
    {'quiz':'Whats your favourite animal?',
      'answer':['cow','cat','goat','sheep']
    },
  ];
  void _printAnswer(){
    if(_quizIndex < quiz.length){
      print("we have more questions");
    }
    print("hello world 1"+_quizIndex.toString());
    setState(() {
      _quizIndex= _quizIndex+1;
      print("hello world 2"+_quizIndex.toString());
    });
    print("hello world 3"+_quizIndex.toString());
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: _quizIndex < quiz.length ?
        Quizes(
            quiz: quiz,
            quizIndex: _quizIndex,
            selectHandler: _printAnswer
        )
            :
        Results(),
      ),
    );
  }
}
