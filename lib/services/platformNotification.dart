import 'dart:js_util' as js_util;
import 'dart:html' as html;

class PlatformNotificationWeb {

  void init() {
  html.Notification.requestPermission().then((permission) {
    if (permission == 'granted') {
      print('User granted notification permission.');
    } else {
      print('User denied notification permission.');
    }
  });
}

void push(String title, String body) {
  if (html.Notification.permission == 'granted') {
    js_util.callConstructor(
      js_util.getProperty(html.window, 'Notification'),
      [title, js_util.jsify({'body': body})],
    );
  } else {
    print('Notification permission not granted');
  }
}
}