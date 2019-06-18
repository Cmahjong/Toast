import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:toast_plugin/toast_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ListView(
          children: <Widget>[
            RaisedButton(onPressed: (){
              ToastPlugin.showLongToast("Hello Flutter");
            },child: Text("点击弹窗长时间toast"),),
            RaisedButton(onPressed: (){
              ToastPlugin.showShortToast("Hello Flutter");
            },child: Text("点击弹窗短时间toast"),)
          ],
        ),
      ),
    );
  }
}
