import 'dart:html' as html;
import 'dart:js_util' as js_util;
import 'package:flutter_web_notification_platform/platformNotification.dart';

class PlatformNotificationWeb implements PlatformNotification {
  @override
  void requestPermission() {
    html.Notification.requestPermission().then((permission) {
      if (permission == 'granted') {
        print('Notification permission granted.');
      } else {
        print('Notification permission denied.');
      }
    });
  }

  @override
  void sendNotification(String title, String body) {
    if (html.Notification.permission == 'granted') {
      js_util.callConstructor(
        js_util.getProperty(html.window, 'Notification'),
        [title, js_util.jsify({'body': body})],
      );
    } else {
      print('Notification permission not granted.');
    }
  }
}
