import 'package:flutter/material.dart';
import 'eventcol.dart';

class Events extends StatelessWidget {

  Events({Key key, this.data}) : super(key: key);

  final List<String> data;

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      padding: EdgeInsets.all(8.0),
      itemExtent: 60.0,
      itemBuilder: (BuildContext context, int index) {
        return EventCol(text: data[index]);   
      },
    );
  }
}
