// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person {
  Person({
    required this.name,
    required this.lastName,
    required this.phoneNumber,
    this.eMail = "Anonymous_anonymous@gmail.com",
    this.sirket = "Anonim şirket",
    this.imageUrl = "https://picsum.photos/200/300",
  });
  String name;
  String lastName;
  String? imageUrl;
  String phoneNumber;
  String? eMail;
  String? sirket;

  static List<Person> rehber = [
    Person(
      name: "Ahmet",
      lastName: "Yılmaz",
      phoneNumber: "555-123-4567",
      eMail: "ahmet.yilmaz@example.com",
      sirket: "ABC Ltd.",
      imageUrl: "https://picsum.photos/200/300",
    ),
    Person(
      name: "Mehmet",
      lastName: "Demir",
      phoneNumber: "555-234-5678",
      eMail: "mehmet.demir@example.com",
      sirket: "XYZ A.Ş.",
      imageUrl: "https://picsum.photos/200/300",
    ),
    Person(
      name: "Zeynep",
      lastName: "Kaya",
      phoneNumber: "555-345-6789",
      eMail: "zeynep.kaya@example.com",
      sirket: "TechSoft",
      imageUrl: "https://picsum.photos/200/300",
    ),
    Person(
      name: "Elif",
      lastName: "Çelik",
      phoneNumber: "555-456-7890",
      eMail: "elif.celik@example.com",
      sirket: "Innovatech",
      imageUrl: "https://picsum.photos/200/300",
    ),
    Person(
      name: "Burak",
      lastName: "Öztürk",
      phoneNumber: "555-567-8901",
      eMail: "burak.ozturk@example.com",
      sirket: "NextGen",
      imageUrl: "https://picsum.photos/200/300",
    ),
    Person(
      name: "Hakan",
      lastName: "Şahin",
      phoneNumber: "555-678-9012",
      eMail: "hakan.sahin@example.com",
      sirket: "SoftDev",
      imageUrl: "https://picsum.photos/200/300",
    ),
    Person(
      name: "Ebru",
      lastName: "Aslan",
      phoneNumber: "555-789-0123",
      eMail: "ebru.aslan@example.com",
      sirket: "FinTech",
      imageUrl: "https://picsum.photos/200/300",
    ),
    Person(
      name: "Seda",
      lastName: "Koç",
      phoneNumber: "555-890-1234",
      eMail: "seda.koc@example.com",
      sirket: "MediCorp",
      imageUrl: "https://picsum.photos/200/300",
    ),
    Person(
      name: "Can",
      lastName: "Taş",
      phoneNumber: "555-901-2345",
      eMail: "can.tas@example.com",
      sirket: "LogiSys",
      imageUrl: "https://picsum.photos/200/300",
    ),
    Person(
      name: "Gizem",
      lastName: "Aydın",
      phoneNumber: "555-012-3456",
      eMail: "gizem.aydin@example.com",
      sirket: "EduTech",
      imageUrl: "https://picsum.photos/200/300",
    ),
  ];
}
