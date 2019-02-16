import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'alarms.dart';
import 'events.dart';
import 'alarm.dart';

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

  @override
  void initState() {
    super.initState();
    this._getAlarms();
  }

  List<Alarm> _alarms = [];
  List<String> events = ["open", "fish"];

  void _newAlarm() async {
    showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    ).then((time) => setState((){ _alarms = new List.from(_alarms)..addAll([new Alarm(alarmTime: time.toString())]); }));
  }

  Future<void> _getAlarms() async {
    final alarms = await this._getAlarmsFromAPI();
    setState( () { _alarms = alarms.alarms; } );
  }

  Future<AlarmsList> _getAlarmsFromAPI() async {
    final response = await http.get('https://med-ded-server.azurewebsites.net/alarms');
    if (response.statusCode == 200) {
    return AlarmsList.fromJson(jsonDecode(response.body));
  } else {
      throw Exception('Failed to load post');
    }
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
              Events( data:  events ),
              Alarms( data: _alarms, onRefresh: _getAlarms, )
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
