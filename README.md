
<p align="center" style="background: url('https://i.pinimg.com/736x/6b/7f/6b/6b7f6b118ebc01f6e8d8b6e6027398af.jpg') no-repeat center center; background-size: cover; height: 150px; display: flex; align-items: center; justify-content: center; padding: 20px;">
  <span style="background: linear-gradient(to right, #0000FF, #8A2BE2, #00FF00); -webkit-background-clip: text; -webkit-text-fill-color: transparent; font-size: 2em; font-weight: bold;">
    flutter_web_notification_platform
  </span>
</p>
## Overview

`flutter_web_notification_platform` is a Flutter plugin designed to provide cross-platform support for web notifications. This plugin utilizes conditional imports to ensure that only the relevant code is executed depending on the platform (web or non-web). 

### Key Features

- **Cross-Platform Support**: Handles notifications for both web and non-web platforms, providing a seamless experience across different environments. 
- **Conditional Imports**: Utilizes Dart's conditional imports to load platform-specific implementations dynamically.
- **Customizable Notifications**: Allows sending and requesting permissions for notifications with customizable titles and messages.
- **Fallback Implementation**: Provides a default stub implementation for non-web platforms to handle cases where web notifications are not supported.

### SUPORTED PLATFORM
ANDROID 🔴
IOS 🔴
MAC 🔴
WINDOWS 🔴
WEB 🟢
### Purpose

The primary goal of this library is to offer a unified interface for handling notifications across different platforms while adhering to platform-specific requirements. By abstracting away the complexities of platform differences, it simplifies the process of adding notification functionality to your Flutter applications.

### Getting Started

To get started with `flutter_web_notification_platform`, follow these steps:

1. **Add Dependency**:
   Add `flutter_web_notification_platform` to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     flutter_web_notification_platform: ^latest
