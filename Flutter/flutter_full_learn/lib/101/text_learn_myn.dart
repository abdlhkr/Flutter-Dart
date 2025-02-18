import 'package:flutter/material.dart';

class TextStyleOfMyOwn extends StatelessWidget {
  final String exclusiveName = "Emre";

  const TextStyleOfMyOwn({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text(
          "Merhaba $exclusiveName",
          textAlign: TextAlign.center,
          maxLines: 3,
          style: MyProjectTextStyles.specialStyle,
          /*           style: TextStyle(
            color: Colors.deepPurpleAccent,
            backgroundColor: Colors.black,
            fontSize: 25,
            letterSpacing: 3,
            wordSpacing: 2,
          ), */
        ),
      ),
    );
  }
}

class MyProjectTextStyles {
  static TextStyle specialStyle = TextStyle(
    color: TextColorOfMyProject.myColor,
    // şimdi ne zaman istesem bu renge sahip her şeyi aynı anda değiştirebilirilm,
    backgroundColor: TextColorOfMyProject.backgroundMyColor,
    fontSize: 25,
    letterSpacing: 3,
    wordSpacing: 2,
  );
}

class TextColorOfMyProject {
  static Color myColor = const Color.fromARGB(255, 195, 64, 218);
  static Color backgroundMyColor = const Color.fromARGB(255, 0, 0, 0);
}

// daha sonra proje boyunca kullanılacak renk gibi özellikleri farklı sınıflara 
// taşıyarak burda bi çözüm sunabiliriz hepsninin aynı anda değişmesine karşın