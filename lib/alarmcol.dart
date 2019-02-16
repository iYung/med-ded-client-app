import 'package:flutter/material.dart';

class AlarmCol extends StatelessWidget {

  AlarmCol({Key key, this.text, this.alarmDelete}) : super(key: key);

  final String text;
  final dynamic alarmDelete;

  Widget build(BuildContext context) {
    return Card(child: 
      Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text, textAlign: TextAlign.center),
            IconButton(
              icon: Icon(Icons.remove),
              tooltip: "Delete this alarm",
              onPressed: () => alarmDelete(text),
            )
          ],
        ),
      )
    ); 
  }
}
