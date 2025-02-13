void main(List<String> args) {
    List<Cars> carItems = [
    Cars(carModels.BMW,"X5",100000,isSecondHand: false),
    Cars(carModels.BMW,"X3",100000,isSecondHand: false),
    Cars(carModels.BMW,"X4",100000,isSecondHand: false),
    Cars(carModels.Ford,"Focus",50000),
    Cars(carModels.Hundai,"i20",30000),
    Cars(carModels.Mercedes,"C180",150000),
    Cars(carModels.Mercedes,"sl 63 amg",99999999999),
    Cars(carModels.Mercedes,"One",111111111111),
    Cars(carModels.Toyota,"Corolla",75000,isSecondHand: false),
    Cars(carModels.Fiat,"Egea",45000,isSecondHand: false),
    ];
    // bu arabaların kaç tanesi ikinci el
    Cars carIdentical = Cars(carModels.BMW,"X5",100000,isSecondHand: false);
    final bool resultCount = carItems.any((test) => test.isSecondHand == false);
    // yukarıdaki kullanım hepsi birinci el mi diye bakıyor
    // peki kaçtanesi birinci el nasıl bakıcam
    final int howManyFirstHand = carItems.where((test) => test.isSecondHand == false).length;
    // Creates a new lazy [Iterable] with all elements that satisfy the predicate [test].
    print(howManyFirstHand);
    // elimizdeki arabalar arasında carIdentical la aynı olan var mı
    final bool isThereIdentical = carItems.any((test) => test == carIdentical);
    // yukarıdaki zor olan
    final bool easyIsThereIdentical = carItems.contains(carIdentical);
    print("we"+ (isThereIdentical ? " have " : " don't have ") + "identical car");

    // bana BMW olan ve parası 100 den fazla olan arabaları getir
    final List<Cars> bmwCars = carItems.where((test) {
      return test.name == carModels.BMW && test.money > 1;
    }).toList();
    // toList() yapmazsak Iterable döner
    print(bmwCars);
    // bana BNW olan ve monysi 1 den büyük olan arabaların isimlerini getir
    List<Cars> bmwCarNames = carItems.where((test){
      return test.name == carModels.BMW && test.money > 1;
    }).toList();
    List<String> bmwCarNamesString = bmwCarNames.map((e) => e.model).toList();
    print(bmwCarNamesString);
    // arabaların fiyatlarını ayrııp yaz
      List<Cars> mercedesCarNames = carItems.where((test){
      return test.name == carModels.Mercedes;
    }).toList();
    List<String> mercedesCarNamesList = mercedesCarNames.map((e) =>
     e.model).toList();
     print(mercedesCarNamesList.join(" , "));
     // joın zaten var olan bi listeyi yazdırırken değerleri ayırmak için kullanılır



    // elimizde hiç mcLaren var mı
    bool isAny = carItems.any((test){
      return  test.name == carModels.Mclaren; 
    });
    print(("we " + (isAny == false ? "don't" : "do") + " have a ") +"mclaren");
    // yukarıdaki gibi yazmak çok uygun değil
    print('we ${isAny == false ? "dont" : "do "} have a mclaren car');
    // yukarıda any ile yaptığımız şeyi singlewhere ile de yapabiliriz ama
    // single where eğer yoksa null döner buna dikkat ederek yazılmalıdır
    // varsa direk bulduğu ilk objeyi döner
    // nullbale olmasına rağmen neden hata aldım ?
    /*
    single where
    Eğer carItems listesi içinde carModels.Mclaren adına sahip bir öğe yoksa → Hata alırsınız.
    Eğer carItems içinde birden fazla carModels.Mclaren öğesi varsa → Yine hata alırsınız.
    yani direk olarak hata fırlatıyor null yönetimi ile ele almak mümkün değil
    try catch ile bakıcan böyle bi durum varsa
    */

    try{
          Cars isAnyMaclaren = carItems.singleWhere((test)=> test.name == carModels.Mclaren);
          print("we have a maclaren car name : $isAnyMaclaren");
    }catch(e){
      print("we dont have a mclaren car");
    }finally{
      // try catch sonrası her türlü çalışacak kod
      print("ne saçma sapan sorular soruyon be abi regavereravvbe");
    }
  //  print('we ${isAnyMaclaren == Null ? " dont have " : " have"} mclaren car');

  // arabaları fiyatına göre sıralr mısın
  print("$carItems \n ---------------------") ;
  carItems.sort((a,b) => a.money.compareTo(b.money));
  print(carItems);

  // belli durumlara sahip öğeleri silme 
  // mercedes olanları silicez diuelim mesela bizim favori aston martin
  carItems.removeWhere((test) => test.name == carModels.Mercedes);
  print("-"*30);
  print(carItems);

  switch(carItems.length){
    case 0:
      print("no car");
      break;
    case 1:
      print("only one car");
      break;
    default:
      print("we have ${carItems.length} cars");
  }
  int length = "bengeldim".length;
  switch(length){
    case < 5:
      print("beş karakterden küçük değerler kabul edilmemektedir");
      break;
    case <7:
      print("parola kullanıma uygundur");
      break;  
    default:
      print("parola çok uzun");  
  }
}
  // tüm arabaların modelini değiştiren metod
 List<Cars> changeCarModels(List<Cars> items){
    return items.map((car) => Cars(carModels.Mclaren,car.model,car.money)).toList();
 }



// benim bi arabalar sınıfım olucak 
// arabaların modeli ismi parası kesin olucak sehri olmayacak
// özel olarak belirtilmezse tüm ürünler ikinci el kabul edileccek

class Cars{
  final String model;
  carModels name;

  void setCarModel(carModels item){
    this.name = item;
  }
  double money;
  bool isSecondHand; // ilk alındıktan sonra ikinci el olacak değişebilir
  Cars(this.name,this.model,this.money,{this.isSecondHand = true});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Cars &&
        other.model == model &&
        other.name == name &&
        other.money == money &&
        other.isSecondHand == isSecondHand;
  }
  @override
  String toString() {
    // TODO: implement toString
    return "Car name: $name, model: $model, money: $money, isSecondHand: $isSecondHand \n";
  }

}
enum carModels {
  BMW,
  Toyota,
  Hundai,
  Mercedes,
  Ford,
  Fiat,
  Mclaren,
}