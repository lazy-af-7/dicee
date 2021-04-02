import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade500,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
                fontFamily: 'Dancing Script',
                fontSize: 50.0,
                color: Colors.white),
          ),
          backgroundColor: Colors.red.shade600,
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
  int LeftDiceNumber = Random().nextInt(6) + 1;
  int RightDiceNumber = Random().nextInt(6) + 1;
  void roll() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
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
                roll();
              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                roll();
              },
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
