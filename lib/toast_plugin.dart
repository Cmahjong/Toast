import 'dart:async';

import 'package:flutter/services.dart';

class ToastPlugin {
  static const MethodChannel _channel =
      const MethodChannel('toast_plugin');

  static showShortToast(String toastContent){
    _channel.invokeMethod("showShortToast",toastContent);
  }
  static showLongToast(String toastContent){
    _channel.invokeMethod("showLongToast",toastContent);
  }
}
