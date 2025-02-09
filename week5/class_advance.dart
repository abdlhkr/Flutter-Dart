void main(List<String> args) {
  _User user = _User("Ahmet",age: 50,moneyType: 10);
  print(user.name);
  print(user.age);

  try{
    print(user.moneyType as String);
  }catch(e){// type 'int' is not a subtype of type 'String' in type cast
    print(e);
  }

  // yukarıdaki sorunu önlemek için 
  final moneyType = (user.moneyType is String) ? user.moneyType : "";
  print(moneyType + " TL");
  // burda direk yapıda her türlü string alıcak

  // şimdi operatör yazmada sıra sınıfa özel operatör daha doğru olur
  numberClass number = numberClass(50,"12");
  numberClass number2 = numberClass(50,"12");
  try{
    if((number + number2) > 40){
    print("bu ikisi beraber anca bi adam eder");
    }else{
      print("zaten olmayacak şu an ");
    }
  }catch(e){
    print(e);
    print("""sen zaten class variable ların 
    değer değil referans tuttuğunu biliyorsun""");
  }

  print(number == number2);
}

class numberClass{
  int number;
  String id;
  numberClass(this.number,this.id);
 
  int operator +(numberClass number){
    return this.number + number.number;
  }
  // burda object olma sebebi ilki numberClass o zaten biziz this yani
  // ama ikinci öğe sallıyorum String olabilir int olabilir ondan
  @override
  bool operator ==(Object object){
    return (object is numberClass) && (object.number == this.number);
  }
}
// kullancıının parası var ama paranın tipi değişken
//parası olan kişide 100 de yazabilir TL de yazabilir mesela 
// ya sadece 100 yada sadece TL olucak
class _User{
  String name;
  int? age;
  dynamic moneyType;

  _User(this.name,{this.age,this.moneyType});
  
  String get getName => name;
  int? get getAge => age;
  set setAge(int? age) => this.age = age;
  set setName(String name) => this.name = name;
  set setMoneyWithString(String moneyType) => this.moneyType = moneyType;
  set setMoneyWithInt(int moneyType) => this.moneyType = moneyType;



  bool isAdult() => (age ?? 0) > 18;

  bool isAdultV2(){
    // aslında yukarıdaki ile aynı sadece yapıyı gör
    if(age is int){
      return age! > 18;
    }else{
      return false;
    }
  }
}

// şimdi mixin yapısı var mixin tam olmasada javadaki interface gibi

