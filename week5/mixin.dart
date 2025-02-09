void main(List<String> args) {
  User abdullah = User("abdullah");
  User memo = User("memo");
  Bank ziraat = Bank(abdullah,99999.99);
  // kullanıcı userı değiştirecek ve harcama yapacak diyelim
  // cascade notation gibi bişey bunun adı;  
  ziraat
    ..user=memo
    ..money-=(ziraat.money*0.5);
  // YANİ BİRDEN FAZLA FİELD AYNI ANDA UPDATE EDİLECEKSE KULLANIŞLI 
  // OLABİLECEK Bİ METOD  
} 

class User{
  late final int ID;
  String name;
  static int lastID = 1; // kullanıcılara 1 den başlayıp artan sayıda ID vericez
  User(this.name){
    lastID ++;
    this.ID = lastID;
  }
}

class Bank with BankMixin{
  User user;
  double money;
  Bank(this.user,this.money);
  
  @override
  double getBankMoney() {
    // TODO: implement getBankMoney
    return this.money;
  }

  // arrow kullansak double getBankMoney => this.money;
}


mixin BankMixin{ // interface ler inherits burda with
  // mixinin classtan farkı fieldları ve constructerı olmaması f
  // daha çok interface gibi
  double getBankMoney();// javadaki abstract class gibi boş method
  // tanımlayabilirsin
  void calculateMoney(int num1,int num2){
    print("${num1 * num2}");
  }
}