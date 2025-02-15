void main(List<String> args) {
  Singleton ali = Singleton();
  Singleton hamza = Singleton();
  print("${ali.toString()} == ${hamza.toString()}");
  print("${ali.name} : ${hamza.name}");

  // aynı makineyi kullanan iki şirketin olduğu bi senaryo
  print("------------------------------");
  Makine firstCompany = Makine();
  Makine secondCompany = Makine();
  print("${firstCompany.isAvaibleToUse} :: ${secondCompany.isAvaibleToUse}");
  firstCompany.useMachine();
  secondCompany.useMachine();
  firstCompany.releaseMachine();
  secondCompany.useMachine();
}

/* class Weather{
  String city;
  static final Weather _instance = Weather._internal();

  factory Weather(){
    return _instance;
  }
  Weather._internal(){
    
  }
} */
/* 
  putIfAbsent Ne İşe Yarıyor?
  putIfAbsent metodu, Dart'taki Map veri yapısında kullanılan bir fonksiyondur.
  Bu metod, verilen anahtar (key) haritada yoksa, yeni bir değer ekler; varsa mevcut değeri döndürür.
 */
class Singleton{
  static final Singleton _instance = Singleton._internal("varsayılan ad");
  String name;
  factory Singleton(){
    return _instance;
  }

  Singleton._internal(this.name);

  void setName(String newName) => this.name = newName;
}

class Makine{
  static final Makine _instance = Makine._internal();
  String name = "soğutucu";
  bool _isAvaible = true;

  factory Makine(){
    return _instance;
  }

  Makine._internal();

  bool get isAvaibleToUse => this._isAvaible;
  void useMachine(){
    if(isAvaibleToUse){
      print("kullanmaya başlanıyor"); 
      this._isAvaible = false;
    }else{
      print("makine şu an kullanıma uygun değil");
    }
  } 

  void releaseMachine(){
    if (!isAvaibleToUse){
      print("makine kullanım için serbest bırakılıyor");
      _isAvaible = true;
    }else{
      print("makine zaten şu an serbest");
    }
  }
}