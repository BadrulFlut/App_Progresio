import 'package:app_progresio/core.dart';
import 'package:app_progresio/state_util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const FailedView(),
    );
  }
}
