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
  // bu ikisi aynı işi yapıyor
    bool getEmptyID2() => _id.isEmpty;
    bool get getEmptyID => _id.isEmpty;
    // get olanlar fonksiyon gibi çağrılır girdi parametresi alamazlar

  }