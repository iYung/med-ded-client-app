import 'package:flutter/material.dart';

class AlarmCol extends StatelessWidget {

  AlarmCol({Key key, this.text}) : super(key: key);

  final String text;

  Widget build(BuildContext context) {
    return Card(child: 
      Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text, textAlign: TextAlign.center),
            Icon(Icons.remove),
          ],
        ),
      )
    ); 
  }
}
