import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  //function to change dice face
  void throwFunction() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                //Left Die
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),

                //Right Die
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ],
            ),

            //Button to throw dice
            RaisedButton(
              color: Colors.white,
              textColor: Colors.red,
              onPressed: () {
                throwFunction();
              },
              child: Text(
                'roll',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
