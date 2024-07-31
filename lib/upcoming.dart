import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
  final List<Map<String, String>> events = [
    {
      'title': 'Flutter Workshop',
      'date': 'August 10, 2024',
      'time': '10:00 AM - 4:00 PM',
      'location': 'Online',
      'description': 'Join us for an in-depth workshop on Flutter development.',
      'organizer': 'Tech Inc.',
      'contact': 'contact@techinc.com'
    },
    {
      'title': 'Tech Conference 2024',
      'date': 'September 15, 2024',
      'time': '9:00 AM - 5:00 PM',
      'location': 'San Francisco, CA',
      'description': 'A conference showcasing the latest in tech innovation.',
      'organizer': 'Innovate Now',
      'contact': 'info@innovatenow.com'
    },
    {
      'title': 'Networking Meetup',
      'date': 'October 5, 2024',
      'time': '6:00 PM - 9:00 PM',
      'location': 'New York, NY',
      'description': 'An event to network with professionals in the tech industry.',
      'organizer': 'ProNet',
      'contact': 'events@pronet.com'
    },
    {
      'title': 'AI Symposium',
      'date': 'November 20, 2024',
      'time': '8:00 AM - 3:00 PM',
      'location': 'Boston, MA',
      'description': 'Discussing the latest advancements in AI technology.',
      'organizer': 'AI Future',
      'contact': 'symposium@aifuture.com'
    },
    {
      'title': 'Cybersecurity Workshop',
      'date': 'December 10, 2024',
      'time': '11:00 AM - 2:00 PM',
      'location': 'Chicago, IL',
      'description': 'Learn about the latest trends and techniques in cybersecurity.',
      'organizer': 'SecureTech',
      'contact': 'workshop@securetech.com'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 253, 253, 253),
                  Color.fromARGB(255, 255, 255, 255),
                  const Color.fromARGB(255, 202, 202, 200)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    events[index]['title']!,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0), // Title color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Date: ${events[index]['date']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(179, 0, 0, 0), // Date color
                    ),
                  ),
                  Text(
                    'Time: ${events[index]['time']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(179, 0, 0, 0), // Time color
                    ),
                  ),
                  Text(
                    'Location: ${events[index]['location']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(179, 0, 0, 0), // Location color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    events[index]['description']!,
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(179, 0, 0, 0), // Description color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Organizer: ${events[index]['organizer']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(179, 0, 0, 0), // Organizer color
                    ),
                  ),
                  Text(
                    'Contact: ${events[index]['contact']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(179, 3, 3, 3), // Contact color
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
