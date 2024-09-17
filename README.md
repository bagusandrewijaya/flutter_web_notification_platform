<div align="center">

<img src="https://i.pinimg.com/736x/6b/7f/6b/6b7f6b118ebc01f6e8d8b6e6027398af.jpg" alt="flutter_web_notification_platform"  width="80%" height="200px">

# flutter_web_notification_platform

[![Pub Version](https://img.shields.io/pub/v/flutter_web_notification_platform?color=blue)](https://pub.dev/packages/flutter_web_notification_platform)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

</div>

## Overview

`flutter_web_notification_platform` is a Flutter plugin designed to provide cross-platform support for web notifications. This plugin utilizes conditional imports to ensure that only the relevant code is executed depending on the platform (web or non-web).

### Key Features

- **Cross-Platform Support**: Handles notifications for both web and non-web platforms, providing a seamless experience across different environments.
- **Conditional Imports**: Utilizes Dart's conditional imports to load platform-specific implementations dynamically.
- **Customizable Notifications**: Allows sending and requesting permissions for notifications with customizable titles and messages.
- **Fallback Implementation**: Provides a default stub implementation for non-web platforms to handle cases where web notifications are not supported.

### Supported Platforms

| Platform | Support |
|----------|---------|
| Android  | 🔴      |
| iOS      | 🔴      |
| macOS    | 🔴      |
| Windows  | 🔴      |
| Web      | 🟢      |

## Purpose

The primary goal of this library is to offer a unified interface for handling notifications across different platforms while adhering to platform-specific requirements. By abstracting away the complexities of platform differences, it simplifies the process of adding notification functionality to your Flutter applications.

## Getting Started

To get started with `flutter_web_notification_platform`, follow these steps:

1. **Add Dependency**:
   Add `flutter_web_notification_platform` to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     flutter_web_notification_platform: ^latest_version
   ```

2. **Import the Package**:
   In your Dart code, import the package:

   ```dart
   import 'package:flutter_web_notification_platform/flutter_web_notification_platform.dart';
   ```

3. **Initialize the Plugin**:
   ```dart
   final notificationPlatform = FlutterWebNotificationPlatform();
   ```

4. **Request Permission**:
   ```dart
   bool permissionGranted = await notificationPlatform.requestPermission();
   ```

5. **Send a Notification**:
   ```dart
   if (permissionGranted) {
     await notificationPlatform.showNotification(
       title: 'Hello',
       body: 'This is a web notification!',
     );
   }
   ```

## Usage Examples

Here's a more comprehensive example of how to use the plugin:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_web_notification_platform/flutter_web_notification_platform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final notificationPlatform = FlutterWebNotificationPlatform();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Web Notification Example')),
        body: Center(
          child: ElevatedButton(
            child: Text('Send Notification'),
            onPressed: () async {
              bool permissionGranted = await notificationPlatform.requestPermission();
              if (permissionGranted) {
                await notificationPlatform.showNotification(
                  title: 'New Message',
                  body: 'You have a new message from Flutter!',
                );
              } else {
                print('Notification permission denied');
              }
            },
          ),
        ),
      ),
    );
  }
}
```

## API Reference

- `requestPermission()`: Requests permission to show notifications.
- `showNotification({String title, String body})`: Displays a notification with the given title and body.

## Contributing

Contributions to `flutter_web_notification_platform` are welcome! Please refer to the [CONTRIBUTING.md](CONTRIBUTING.md) file for guidelines.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any issues or have questions, please file an issue on the [GitHub repository](https://github.com/bagusandrewijaya/flutter_web_notification_platform/issues).

---

Made with ❤️ by [Bagus Andre Wijaya]
