import 'dart:async';

import 'package:flutter/services.dart';

class GesturePlugin {
  static const MethodChannel _channel =
      const MethodChannel('gesture_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future gesture() async {
    _channel.invokeMethod("gesture");
  }
}
