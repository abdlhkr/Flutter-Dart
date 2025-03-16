import 'package:flutter/material.dart';
import 'package:telefon_rehberi/home/detail_person.dart';
import 'package:telefon_rehberi/home/register_page.dart';
import 'package:telefon_rehberi/model/person.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void nothing(item) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailPerson(person: item)),
    );
  }

  void placeHolder() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rehber"), centerTitle: true),
      body: ListView.separated(
        itemCount: Person.rehber.length,
        itemBuilder: (context, index) {
          var item = Person.rehber[index];
          return Card(
            child: ListTile(
              leading:
                  item.imageUrl != null
                      ? ProfileImage(imageUrl: item.imageUrl!)
                      : CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blueAccent,
                      ),
              title: Text("${item.name} ${item.lastName}"),
              subtitle: Text(item.sirket ?? "sirket bilinmiyor"),
              trailing: Icon(Icons.call),
              onTap: () => nothing(item),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 8);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: placeHolder,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 30, backgroundImage: NetworkImage(imageUrl));
  }
}
