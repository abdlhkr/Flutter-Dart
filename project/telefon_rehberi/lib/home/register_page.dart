import 'package:flutter/material.dart';
import 'package:telefon_rehberi/model/person.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  final TextEditingController sirketController = TextEditingController();

  void add() {
    Person.rehber.add(
      Person(
        name: nameController.text,
        lastName: lastNameController.text,
        phoneNumber: numberController.text,
        imageUrl:
            imageUrlController.text.isEmpty ? null : imageUrlController.text,
        sirket: sirketController.text.isEmpty ? null : imageUrlController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kullanıcı Kayıt"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MyTextWidget(
              controller: nameController,
              label: "Ad",
              hint: "Adınızı girin",
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 10),
            MyTextWidget(
              controller: lastNameController,
              label: "Soyad",
              hint: "Soyadınızı girin",
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 10),
            MyTextWidget(
              controller: numberController,
              label: "Telefon Numarası",
              hint: "05xx xxx xx xx",
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10),
            MyTextWidget(
              controller: emailController,
              label: "E-Posta",
              hint: "example@gmail.com",
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            MyTextWidget(
              controller: imageUrlController,
              label: "Profil Resmi URL",
              hint: "https://example.com/image.jpg",
              keyboardType: TextInputType.url,
            ),
            SizedBox(height: 10),
            MyTextWidget(
              controller: sirketController,
              label: "Şirket",
              hint: "Çalıştığınız şirketi girin",
              keyboardType: TextInputType.text,
            ),
            ElevatedButton(onPressed: add, child: Text("Ekle")),
          ],
        ),
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(),
      ),
    );
  }
}
