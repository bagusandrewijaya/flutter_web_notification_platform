// lib/src/platform_notification_stub.dart
import 'package:logger/logger.dart';
import '../flutter_web_notification_platform.dart';

final logger = Logger();

class PlatformNotificationStub implements PlatformNotification {
  @override
  void requestPermission() {
    logger.d('Web notifications are not supported on this platform.');
  }

  @override
  void sendNotification(String title, String body) {
    logger.d('Web notifications are not supported on this platform.');
  }
}
