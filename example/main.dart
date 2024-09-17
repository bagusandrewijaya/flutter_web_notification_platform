// example/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_web_notification_platform/platform_notification.dart';
import 'package:flutter_web_notification_platform/src/platform_notification_web.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PlatformNotification platformNotification = PlatformNotificationWeb();
@override
void initState() { 
    platformNotification.requestPermission();
  super.initState();
  
}
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
            
              platformNotification.sendNotification('Hello!', 'This is a test notification.');
            },
            child: Text('Send Notification'),
          ),
        ),
      ),
    );
  }
}
