import 'package:flutter/material.dart';
import 'alarms.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> alarms = ["puppy", "fish"];

  void _newAlarm() {
    showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.calendar_today)),
                Tab(icon: Icon(Icons.access_alarm)),
              ],
            ),
            title: Text('Pill App'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Alarms( data: alarms)
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _newAlarm,
            tooltip: 'New Alarm',
            child: Icon(Icons.alarm),
          ),
        ),
      ),
    );
  }
}
