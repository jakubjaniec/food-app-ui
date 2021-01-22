import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:food_app_ui/ui/views/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: HomeScreen(),
    );
  }
}
