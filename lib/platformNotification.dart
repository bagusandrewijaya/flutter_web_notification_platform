
export 'src/platformNotification_stub.dart'
    if (dart.library.html) 'src/platformNotification_web.dart';

abstract class PlatformNotification {
  void sendNotification(String title, String body);
  void requestPermission();
}
