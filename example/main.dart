// example/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_web_notification_platform/platform_notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PlatformNotification platformNotification = PlatformNotificationWeb();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Web Push Notifications Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              platformNotification.requestPermission();
              platformNotification.sendNotification('Hello!', 'This is a test notification.');
            },
            child: Text('Send Notification'),
          ),
        ),
      ),
    );
  }
}
