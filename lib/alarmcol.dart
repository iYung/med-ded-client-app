import 'package:flutter/material.dart';

class AlarmCol extends StatelessWidget {

  AlarmCol({Key key, this.text, this.alarmDelete}) : super(key: key);

  final String text;
  final dynamic alarmDelete;

  Widget build(BuildContext context) {
    return Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Text(text, textAlign: TextAlign.center, style: TextStyle(fontSize: 20),), flex: 7,),
            Expanded(child: IconButton(
              icon: Icon(Icons.delete_forever, color: Colors.red,),
              tooltip: "Delete this alarm",
              onPressed: () => alarmDelete(text),
            ), flex: 3)
          ],
      )
    ); 
  }
}
