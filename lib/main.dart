import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var randomArray = ['No', 'Yes', 'Maybe', 'I dont know', 'Heck No'];
  int randomNum = 1;
  int randomBall = 1;
  var randomAnswer;

  //This is where a function goes
  void generateNum() {
    setState(() {
      randomNum = Random().nextInt(randomArray.length);
      randomAnswer = randomArray[randomNum];
      randomBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                generateNum();
              },
              child: Image.asset('images/ball$randomBall.png'),
            ),
          )
        ],
      ),
    );
  }
}
