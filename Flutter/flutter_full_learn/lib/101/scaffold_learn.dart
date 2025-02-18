import 'package:flutter/material.dart';

// bu yapıyı oluşturmak için kısa yol stls
class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});
  // scaffold dediğimiz yapı aslında genel olarak bi uygulmaanın temel yapısı
  // instagram ile anlatıyım en üstte app bar hikayeler
  // ortada body içerik
  //en altta bottomNavigationBar ana sayfa reels gibi ikonların olduğu yer
  // bak şimdi tam olarak yukarıdaki şeyi yapıcaz
  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 235, 33, 33),
        title: Text("sonunda boş kalmayacak buda", textAlign: TextAlign.center),
      ),
      body: Text(
        "en basit uygulama layoutu : $count",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder:
                (builder) => Container(
                  height: 200,
                  constraints: BoxConstraints(minWidth: 500),
                  child: Center(child: Text("hello bitch sit down")),
                ),
          );
          /*           count += 1;
          print(count); */
          // diğer widgetı etkilemiyor falan filan ayarlıcaz
          // olmadı kim bilir neden
        },
      ),

      // şu an bişey yapmıyor duruyor sadece öyle ama sanırım şu an flutter açılış ekranındaki
      // uygulmayı yapabilirim
      drawer: const Drawer(backgroundColor: Color.fromARGB(255, 113, 4, 4)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "A"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "B"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "C"),
        ],
      ),
    );
  }
}
