import 'package:flutter_web_notification_platform/flutter_web_notification_platform.dart';
import 'package:logger/logger.dart';
final logger = Logger();
class PlatformNotificationWeb implements PlatformNotification {
  @override
  void requestPermission() {
    logger.d('Web notifications are not supported on this platform.');
  }

  @override
  void sendNotification(String title, String body) {
    logger.d('Web notifications are not supported on this platform.');
  }
}
