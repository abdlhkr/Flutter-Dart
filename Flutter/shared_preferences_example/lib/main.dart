import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences_example/homePage.dart';
import 'package:shared_preferences_example/theme/theme.dart';
import 'package:shared_preferences_example/theme/themeProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      themeMode:
          Provider.of<ThemeProvider>(context).themeData.brightness ==
              Brightness.dark
          ? ThemeMode.dark
          : ThemeMode.light,
      home: Homepage(),
    );
  }
}
