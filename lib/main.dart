import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
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
  int rightDiceNumber = 1;
  int leftDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 40),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(
                      () {
                        leftDiceNumber = Random().nextInt(6) + 1;
                      },
                    );

                    print('Left Botton Got Pressed.');
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                    setState(
                      () {
                        rightDiceNumber = Random().nextInt(6) + 1;
                      },
                    );
                    print('Right Botton Got Pressed.');
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            child: Icon(
              Icons.shuffle,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6) + 1;
                rightDiceNumber = Random().nextInt(6) + 1;
              });
            },
          )
        ],
      )),
    );
  }
}
