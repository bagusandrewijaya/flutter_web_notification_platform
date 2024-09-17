import 'dart:html';

class PlatformNotification {
  void sendNotification(String title, String body) {
    if (Notification.permission == 'granted') {
      Notification(title, body: body);
    } else {
      requestPermission();
    }
  }

  void requestPermission() {
    Notification.requestPermission().then((permission) {
      if (permission == 'granted') {
        print('Permission granted!');
      }
    });
  }
}
