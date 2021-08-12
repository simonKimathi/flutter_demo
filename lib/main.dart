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
  int _quizIndex=0;

  void _printAnswer(){
    print("hello world 1"+_quizIndex.toString());
    setState(() {
      _quizIndex= _quizIndex+1;

      print("hello world 2"+_quizIndex.toString());
      // if(_quizIndex > 1){
      //   _quizIndex=0;
      // }
    });
    print("hello world 3"+_quizIndex.toString());
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
            Question(
                quiz[_quizIndex]['quiz'] ?.toString() ?? '',
            ),
            ...( quiz[_quizIndex]['answer'] as List<String> )
                .map((answer){
              return Answer(_printAnswer,answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
