import 'package:flutter_web_notification_platform/platformNotification.dart';

class PlatformNotificationWeb implements PlatformNotification {
  @override
  void requestPermission() {
    print('Web notifications are not supported on this platform.');
  }

  @override
  void sendNotification(String title, String body) {
    print('Web notifications are not supported on this platform.');
  }
}
