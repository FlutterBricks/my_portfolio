import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home/home_page.dart';
import 'package:my_portfolio/pages/project/project_detail.dart';

void main() {
  return runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
