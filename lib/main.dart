import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/app.dart';
import 'package:device_preview/plugins.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      plugins: [
        const ScreenshotPlugin(),
      ],
      builder: (context) => MyApp(),
    ),
  );
}
