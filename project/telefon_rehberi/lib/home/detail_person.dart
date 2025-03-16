import 'package:flutter/material.dart';
import 'package:telefon_rehberi/home/home_screen.dart';
import 'package:telefon_rehberi/model/person.dart';

class DetailPerson extends StatelessWidget {
  const DetailPerson({super.key, required this.person});
  final Person person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${person.name} Detail"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              person.imageUrl == null
                  ? CircleAvatar(radius: 30, backgroundColor: Colors.blueAccent)
                  : ProfileImage(imageUrl: person.imageUrl!),
              Text(
                "${person.name} ${person.lastName}",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                person.phoneNumber,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text("şirket : ${person.sirket}", style: TextShape.textStyle),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonField(icon: Icons.call, function: call),
                  // Icon(Icons.whatsapp),
                  SizedBox(width: 18),
                  buttonField(icon: Icons.message,
                   function: call),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class buttonField extends StatelessWidget {
  buttonField({super.key, required this.icon, required this.function});

  final IconData icon;
  VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: function,
     child: Icon(
      icon,
      size: 30,));
  }
}

call() {}

class TextShape extends TextStyle {
  static TextStyle textStyle = TextStyle(fontSize: 24, color: Colors.black);
}
