import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Welcome to Useless App'),
          backgroundColor: Colors.red,
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
  int dicenumberleft = 1;
  int dicenumberright = 1;
  String texty = '';
  String name = '';
  String another = '';
   @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Press the Button Below to Roll the Dice',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          SizedBox(
          height: 15.0,
        ),
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      dicenumberleft = Random().nextInt(6) + 1;
                      texty = 'Poda Loosu Payale';
                      name = '-  Shan.tk';
                      another = 'This is a Platform Testing App';
                    });
                  },
                  child: Image.asset(
                    'images/dice$dicenumberleft.png'
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      dicenumberright = Random().nextInt(6) + 1;
                      texty = 'Poda Loosu Payale';
                      name = '-  Shan.tk';
                      another = 'This is a Platform Testing App';
                    });
                  },
                  child: Image.asset(
                    'images/dice$dicenumberright.png'
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          child: Text(
            texty,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          child: Text(
            another,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
      ],
    );
  }
}
