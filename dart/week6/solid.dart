void main(List<String> args) {
  
}

// burda olay sınıftan bağımsız bir işi sıınıf içinde yapmamak
class User{
  String name;
  User(this.name);

  void sayHello(){
    print("Merhaba benim adım $name");
  }

  // void changeLocation(String location){
  //   print("konum değiştirildi");
  // } şimdi bu kod burda olmayacak 
}

class UserLocation{
  final User user;
  UserLocation(this.user);
  void changeLocation(String location){
    print("konum : $location olarak değiştirildi");
  }
}