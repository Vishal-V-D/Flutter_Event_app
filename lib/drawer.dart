import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import font_awesome_flutter

class AboutProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://example.com/profile.jpg'), // Replace with your profile image URL
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Vishal VD',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Event Manager with a passion for organizing successful events and providing excellent experiences.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Instagram Profile: @event_manager',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
            SizedBox(height: 16),
            Text(
              'Contact Info:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Email: example@example.com',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Phone: +123 456 7890',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Booked Details:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Number of Events: 50+',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Recent Events: Workshop, Conference, Seminar',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook),
                  onPressed: () {
                    // Navigate to Facebook profile
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  onPressed: () {
                    // Navigate to Twitter profile
                  },
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.linkedin),
                  onPressed: () {
                    // Navigate to LinkedIn profile
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
