import 'package:flutter/material.dart';
import 'alarmcol.dart';
import 'alarm.dart';

class Alarms extends StatelessWidget {

  Alarms({Key key, this.data, this.onRefresh, this.alarmDelete}) : super(key: key);

  final List<Alarm> data;
  final dynamic onRefresh;
  final dynamic alarmDelete;

  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: ListView.builder(
          itemCount: data.length,
          padding: EdgeInsets.all(8.0),
          itemExtent: 60.0,
          itemBuilder: (BuildContext context, int index) {
            return AlarmCol(text: data[index].alarmTime, alarmDelete: alarmDelete,);   
          },
        ),
      onRefresh: onRefresh,
    );
  }
}
