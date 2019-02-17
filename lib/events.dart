import 'package:flutter/material.dart';
import 'eventcol.dart';
import 'event.dart';

class Events extends StatelessWidget {

  Events({Key key, this.data, this.onRefresh}) : super(key: key);

  final List<Event> data;
  final dynamic onRefresh;

  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: ListView.builder(
        itemCount: data.length,
        padding: EdgeInsets.all(8.0),
        itemExtent: 60.0,
        itemBuilder: (BuildContext context, int index) {
          return EventCol(e: data[index]);   
        },
      ),
      onRefresh: onRefresh
    );
  }
}
