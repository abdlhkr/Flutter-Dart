void main(List<String> args) {
    print("sürekli if else ile kontrol sağlamak yerine class larla çözüm sağlamak");
}

abstract class IUser{
  String name;
  IUser(this.name);
  void sayHello();
}

class Turk extends IUser{
  Turk(String name) : super(name);
  @override
  void sayHello() {
    print("Merhaba benim adım $name");
  }
}

class English extends IUser{
  English(String name) : super(name);
  @override
  void sayHello() {
    print("Merhaba benim adım $name");
  }
}