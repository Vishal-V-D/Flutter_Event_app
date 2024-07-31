import 'package:flutter/material.dart';
import 'package:event_app/events.dart';
import 'package:event_app/evencard.dart';

class Home extends StatelessWidget {
  final List<Event> events = [
    Event(
      title: "Hackathon",
      description: "Join us for a 24-hour coding marathon.",
      imageUrl: "https://fastly.picsum.photos/id/20/3670/2462.jpg?hmac=CmQ0ln-k5ZqkdtLvVO23LjVAEabZQx2wOaT4pyeG10I",
    ),
    Event(
      title: "Workshop",
      description: "Learn new skills in our hands-on workshop.",
      imageUrl: "https://fastly.picsum.photos/id/1/5000/3333.jpg?hmac=Asv2DU3rA_5D1xSe22xZK47WEAN0wjWeFOhzd13ujW4",),
    Event(
      title: "Webinar",
      description: "Join our webinar on the latest tech trends.",
      imageUrl: "https://fastly.picsum.photos/id/152/3888/2592.jpg?hmac=M1xv1MzO9xjf5-tz1hGR9bQpNt973ANkqfEVDW0-WYU",
    ),
     Event(
      title: "Ted Talk",
      description: "Join our webinar on the latest tech trends.",
      imageUrl: "https://fastly.picsum.photos/id/30/1280/901.jpg?hmac=A_hpFyEavMBB7Dsmmp53kPXKmatwM05MUDatlWSgATE",
    ),
    // Add more events here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return EventCard(event: events[index]);
        },
      ),
    );
  }
}
