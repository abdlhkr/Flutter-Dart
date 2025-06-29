import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late bool lightDarkTheme;

  @override
  void initState() {
    super.initState();
    loadTheme();
  }

  void loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      lightDarkTheme = prefs.getBool('lightDarkTheme') ?? false;
    });
  }

  void changeThemeMode() async {
    lightDarkTheme = !lightDarkTheme;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('lightDarkTheme', lightDarkTheme);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 7, 7),
        title: Text(
          "Light Dark theme example",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              lightDarkTheme ? "Close Dark Theme" : "Open Dark Theme",
              style: TextStyle(fontSize: 36),
            ),
            ElevatedButton(
              onPressed: changeThemeMode,
              child: lightDarkTheme
                  ? Icon(Icons.toggle_off)
                  : Icon(Icons.toggle_on),
            ),
          ],
        ),
      ),
    );
  }
}
