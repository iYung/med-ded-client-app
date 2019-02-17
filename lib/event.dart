class Event {
  final String eventTime;
  final String val;
  final String why;

  Event({this.eventTime, this.val, this.why});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      eventTime: json['eventTime'].toString().split("T")[1].substring(0,5) + " " + json['eventTime'].toString().split("T")[0],
      val: json['val'],
      why: json['why']
    );
  }
}

class EventsList {
  final List<Event> events;

  EventsList({this.events});

  factory EventsList.fromJson(List<dynamic> parsedJson) {

    List<Event> events = new List<Event>();
    events = parsedJson.map((i)=>Event.fromJson(i)).toList();

    return new EventsList(
       events: events,
    );
  }
}