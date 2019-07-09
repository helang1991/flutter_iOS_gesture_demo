import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gesture_plugin/gesture_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('gesture_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GesturePlugin.platformVersion, '42');
  });
}
