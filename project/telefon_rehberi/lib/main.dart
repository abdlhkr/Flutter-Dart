import 'package:flutter/material.dart';
import 'package:telefon_rehberi/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rehber",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
