package com.yj.toast_plugin;

import android.app.Activity;
import android.widget.Toast;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** ToastPlugin */
public class ToastPlugin implements MethodCallHandler {
  private Activity activity;

  public ToastPlugin(Activity activity) {
    this.activity = activity;
  }

  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "toast_plugin");
    channel.setMethodCallHandler(new ToastPlugin(registrar.activity()));
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("showShortToast")) {
      Toast.makeText(activity,call.arguments.toString(),Toast.LENGTH_SHORT).show();
    }else if (call.method.equals("showLongToast")) {
      Toast.makeText(activity,call.arguments.toString(),Toast.LENGTH_LONG).show();
    } else {
      result.notImplemented();
    }
  }
}
