import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    child: Image.asset('images/dice5.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    child: Image.asset('images/dice2.png'),
                  ),
                ),
              ],
            ),
            RaisedButton(
              onPressed: () {},
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
