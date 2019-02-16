import 'package:flutter/material.dart';
import 'alarmcol.dart';

class Alarms extends StatelessWidget {

  Alarms({Key key, this.data}) : super(key: key);

  final List<String> data;

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      padding: EdgeInsets.all(8.0),
      itemExtent: 50.0,
      itemBuilder: (BuildContext context, int index) {
        return AlarmCol(text: data[index]);   
      },
    );
  }
}
