import 'package:flutter/material.dart';
import 'event.dart';

class EventCol extends StatelessWidget {

  EventCol({Key key, this.e}) : super(key: key);

  final Event e;

  Widget build(BuildContext context) {
    var reason = int.parse(e.why);
    var reasonTxt = "Opened";
    if (reason == 1) {
      reasonTxt = "Closed";
    } else if (reason == 2) {
      reasonTxt = "Too cold";
    } else if (reason == 3) {
      reasonTxt = "Too hot";
    }

    return Card(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Text(e.eventTime, textAlign: TextAlign.center, style: TextStyle(fontSize: 20)), flex: 3),
            Expanded(child: Text(reasonTxt, textAlign: TextAlign.center, style: TextStyle(fontSize: 20)), flex: 3),
            Expanded(child: Text(e.val, textAlign: TextAlign.center, style: TextStyle(fontSize: 22)), flex: 1),
          ],
        )
    );
  }
}