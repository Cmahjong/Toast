import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toast_plugin/toast_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('toast_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('showLongToast', () async {
    expect(await ToastPlugin.showLongToast("Hello Flutter"), '42');
  });
  test('showShortToast', () async {
    expect(await ToastPlugin.showShortToast("Hello Flutter"), '42');
  });
}
