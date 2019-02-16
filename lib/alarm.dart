class Alarm {
  final String alarmTime;

  Alarm({this.alarmTime});

  factory Alarm.fromJson(Map<String, dynamic> json) {
    return Alarm(
      alarmTime: json['alarmTime']
    );
  }
}

class AlarmsList {
  final List<Alarm> alarms;

  AlarmsList({this.alarms});

  factory AlarmsList.fromJson(List<dynamic> parsedJson) {

    List<Alarm> alarms = new List<Alarm>();
    alarms = parsedJson.map((i)=>Alarm.fromJson(i)).toList();

    return new AlarmsList(
       alarms: alarms,
    );
  }
}

