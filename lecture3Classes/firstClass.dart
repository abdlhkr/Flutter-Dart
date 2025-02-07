
void main(List<String> args) {
  int newMoney;
  newMoney = 100;
  print(newMoney);
  // print(newMoney) 'newMoney' must be assigned before it can be used.
  // dart dili null safety olduğu için değişkenlere değer atamadan kullanamayız
  // bu yüzden değişkenlere değer atamadan kullanamayız
  //değeri sonradan belirlenecek bi variable atamak için
  int? newMoney2; // null olabilecek değerler bu şekilde kullanılır
  print(newMoney2); 
  print(newMoney2 ?? 0); // null ise 0 yap
  //bide ! var sıkıntılı biraz null olmayacağını belirtir
  // ama null olursa hata verir örneğin
  // print(newMoney2!); // null olursa hata verir
  // Null check operator used on a null value
  // önce kullanıcıları liste olarak belirleyelim
  List<int?> listeKullanicilar = [100,0,null];
  // int den sonra gelen ? işareti null olabileceğini belirtir

  Map<String,List<int>> kullanicilar= {
    "Ahmet": [100,200,300],
    "Mehmet": [0],
    "Ali": []
  };
  print(kullanicilar["Ahmet"]);
  for (var item in listeKullanicilar){
    bool result = controlMoney(item) == null ? false : true;
    print(result);
    // conditional expression kısa if else yapısı
  }
  print("-"*20);
  User user1 = User("Ahmet",100,city: "İstanbul",age: 50,id: "123");
  print(user1.name);
  User user2 = User("Mehmet",20,city: "Ankara",age: 30,id: "124");
  print(user2.name);
  // User user2_5 = User("Mehmet",20,null,null) optional olduğu için
  // null yazmamıza gerek yok sadece istersek değerleri vericez
  User user3 = User("Ali",0,city: "Ankara",age: 30,id: "125");
  print(user3.toString());
  // şu anki kullanımda zorunlu alanlar harici direk neye değer vereceğini
  // belirterek değer veriyoruz öbür türlü hata alırız
  // id şu an bu dosyada olduğuy için görüntüleme yapılabilir
  // file private
  print(user1._id);
}
// adı olmak zorunda 
// parası olmak zorunda 
// yaşını vermeyebilir
//city sini vermeyebilir
// city yoksa code da anonymous kullan
class User{
  late final String name;
  late int money;
  late int? age;
  late String? city;
  late String userCode;
  late final String _id;
  // dart ta private _ ile başlar ve o dosya içinde görünür
  // o sınıf farklı bi dosyaya taşındığında getter setter gerekir
  User(String name,int money,{String? city,int? age,required String id}){
    this.name = name;
    this.money = money;
    this.city = city;
    this.age = age;
    this._id = id;
    this.userCode = city ?? "anonymous "+ name  ;
  }

  void kampanya(){
/*     if(this.city == "İstanbul"){
        return true;
    }else{
      return false;
    }
  } */
  // ternary operator
    if (this.city == null){
        print("müşteri şehri belirtilmemiş");
    }else{
      // normalde city null olabileceği için isEmpty hata verir
      // bu yüzden null check yapmamız lazım artık null olmadığından
      // emin olduğumuz için ! işareti ile kesinlikle null olmayacağını belirtebilriiz
          if(this.city!.isEmpty){
            print("müşteriye özel kampanya");

          if (this.city == "İstanbul"){
            print("müşteriye özel kampanya");
          }
        }
    }
  }
  }
class User2{
  late final String name;
  // dart ta ki encapsulation getter setter kullanımu
   int _money;
   int get money => _money;

   set money(int value){
    _money = value;
   }
   int? age;
   String? city;
   late final String userCode;

   User2(this.name,this._money,{this.city,this.age}){
      this.userCode = (city ?? "anonymous ")+ name  ;
    }
  
}
void controlCustomerAge(int? age){
  int checkedAge = age ?? 0;
  if(checkedAge > 18){
    print("You can get a beer");
  }else{
    print("You can't get a beer");
  }
}
  // bankaya 3 müşteri geldi birinin 100 tl si diğerinin hesabı yok
  // diğerinin hesabı 0 tl var
  // hesabı olmayana hesap açalım 0 tl si olanları kovalım parası olan
  // olanlara kredi verelim 
  void bankCreate(int? money){
    if(money == null){
      print("hesabınız yok hesap açalım");
    }else if(money >= 0){
      print("kredi almaya hak kazandınız");
    }else{
      print("hesabınızda paranız yok hesap kapanacaktır");
    }
  }

  int? controlMoney(int? money){
    if(money != null && money > 0){
      return money;
    }else{
      return null;
    }

    /*
    burda null dönebilen fonksiyonlarda eğer bi değer yoksa
    default olarak null döner
    else{
      return null;
    }
    */
  }