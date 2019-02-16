import 'package:flutter/material.dart';

class EventCol extends StatelessWidget {

  EventCol({Key key, this.text}) : super(key: key);

  final String text;

  Widget build(BuildContext context) {
    return Card(child: 
      Container(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text, textAlign: TextAlign.center),
            Text("other", textAlign: TextAlign.center),
          ],
        ),
      )
    ); 
  }
}
