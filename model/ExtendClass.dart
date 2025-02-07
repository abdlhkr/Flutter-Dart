void main(List<String> args) {
    SpeacialUser user1 = SpeacialUser("Ahmet",100,"1234");
    print(user1.toString());
      SuperUser superUser = SuperUser("Ahmet",100,50);
      print(superUser.calculateMoney);
}

abstract class User {
    String name;
    int money;
    User(this.name,this.money);
    void getMoneyWithBankName() =>
     print("Banka adı: Ziraat Bankası para: $money");

     @override
  String toString() {
    // TODO: implement toString
    return "name: $name money: $money ";
  }
} 

class SpeacialUser extends User{
  String securityCode;
  SpeacialUser(String name,int money,this.securityCode):super(name,money);
  // önce eskiden olan bilgileri alıp sonra supere gidiyorsun
  String toString() {
    // TODO: implement toString
    return super.toString() + "securityCode: $securityCode";
  }


}

class SuperUser extends User{
  late int _discaunt;
  int get discaunt => _discaunt;
  set discaunt(int value) => _discaunt = value;

  SuperUser(String name,int money,int _discaunt):super(name,money){
    this._discaunt = 10;
  }
  int get calculateMoney => money - (money ~/ discaunt);
}