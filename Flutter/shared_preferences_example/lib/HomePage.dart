import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_example/theme/theme.dart';
import 'package:shared_preferences_example/theme/themeProvider.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadTheme();
    });
  }

  void loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      lightDarkTheme = prefs.getBool('lightDarkTheme') ?? false;
      if (lightDarkTheme == true) {
        Provider.of<ThemeProvider>(context, listen: false).themeData = darkMode;
      } else {
        Provider.of<ThemeProvider>(context, listen: false).themeData =
            lightMode;
      }
    });
  }

  void changeThemeMode() async {
    lightDarkTheme = !lightDarkTheme;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('lightDarkTheme', lightDarkTheme);
    Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text("Light Dark theme example"),
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
