import 'package:flutter/material.dart';
import 'package:shared_preferences_example/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false, // başlangıç sayfası
    );
  }
}
