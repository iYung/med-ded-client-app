import 'package:flutter/material.dart';
import 'alarmcol.dart';
import 'alarm.dart';

class Alarms extends StatelessWidget {

  Alarms({Key key, this.data}) : super(key: key);

  final List<Alarm> data;

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      padding: EdgeInsets.all(8.0),
      itemExtent: 70.0,
      itemBuilder: (BuildContext context, int index) {
        return AlarmCol(text: data[index].alarmTime);   
      },
    );
  }
}
