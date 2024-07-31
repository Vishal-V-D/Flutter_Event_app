// notifications.dart
import 'package:flutter/material.dart';
import 'dart:math';

class Notifications extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = generateRandomNotifications();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(notifications[index]['icon']),
            title: Text(notifications[index]['title']),
            subtitle: Text(notifications[index]['time']),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> generateRandomNotifications() {
  final random = Random();
  final List<String> users = ['alice', 'bob', 'charlie', 'dave', 'eve'];
  final List<String> actions = ['liked your photo', 'commented on your post', 'started following you', 'mentioned you in a comment', 'shared your post'];
  final List<IconData> icons = [
    Icons.thumb_up,
    Icons.comment,
    Icons.person_add,
    Icons.alternate_email,
    Icons.share,
  ];
  final List<Map<String, dynamic>> notifications = [];

  for (int i = 0; i < 10; i++) {
    notifications.add({
      'title': '${users[random.nextInt(users.length)]} ${actions[random.nextInt(actions.length)]}',
      'time': '${random.nextInt(59) + 1} minutes ago',
      'icon': icons[random.nextInt(icons.length)],
    });
  }

  return notifications;
}
