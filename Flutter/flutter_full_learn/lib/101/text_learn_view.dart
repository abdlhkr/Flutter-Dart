import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  final String name = "Abdullah";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          ("Welcome $name length of the name : ${name.length}"),
          textAlign: TextAlign.center,
          //maxLines: 2,
          // overflow: TextOverflow.ellipsis,
          // en son yöntemde ise alttaki şekilde hazır alabiliriz sitesindeki
          // şekillerden birini
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
            color: ProjectColors.welcomeColor,
          ),
          // style: ProjectStyles.textStyle,
          // burda class açıp style atama sebebimiz tekrar tekrar aynı stylı
          // yazarak zaman kaybetmemek
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle textStyle = TextStyle(
    color: ProjectColors.welcomeColor,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic, // bundan farklı bir şey olursa import
    // etmen gerekiyor
    //  decoration: TextDecoration.underline,
    letterSpacing: 4,
    wordSpacing: 4,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.yellowAccent;
}
