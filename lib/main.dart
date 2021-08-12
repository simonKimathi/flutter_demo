import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

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
      if(quizIndex > 1){
        quizIndex=0;
      }
    });
    print("hello world"+quizIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Column(
          children:[
            Question(quiz[quizIndex]),
            Answer(printAnswer),
            Answer(printAnswer),
            Answer(printAnswer),
          ],
        ),
      ),
    );
  }
}
