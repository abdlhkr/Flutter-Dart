void main() {
  // key value şeklinde veri tutar
  Map<String,int> kullanicilar= {
    "Ahmet": 25,
    "Mehmet": 30,
    "Ali": 35
  };
  print(kullanicilar["Ahmet"]);

  // direk aynı pythonla
/*   for (var key in kullanicilar.keys) {
    print(key);
  }
  for(var value in kullanicilar.values){
    print(value);
  } */

  for(var i = 0; i < kullanicilar.length; i++){
    print("${kullanicilar.keys.elementAt(i)} = ${kullanicilar.values.elementAt(i)}");
  }

  // bir kullancının birden fazla hesabı olabilir diyelim
  Map<String,List<int>> hesaplar = {
    "Ahmet": [100,200,300],
    "Mehmet": [200,300,400],
    "Ali": [300,400,500]
  };

  for(var item in hesaplar.keys){
    // bunu chat yaptı pek anlamadım
      if(!item.isEmpty){
        // burdaki ? nullsa demek ?? null ise 0 yap demek
          for(var i = 0; i < (hesaplar[item]?.length ?? 0); i++){
          print(hesaplar[item]![i]);
      }
    } 
  }

  // diyelimki müşterilerden 100 tl üzeri bakiyesi olanlar 
  // kredi almaya hak kazanacak

  for (var item in hesaplar.keys) {
      for( var money in hesaplar[item]!){
        if(money > 100){
          print("$item kredi almaya hak kazandı");
          // break; olmazsa üç hesap için üç kere yazacak
          break;
        }
      }
  }

  // bankadaki müşterilerin hesaplarındaki toplam bakiyeleri

  for (var item in hesaplar.keys){
    int sum = 0;
    for(var money in hesaplar[item]!){ // burdaki ! işareti null olmayacağını belirtir
    // aslında ! for içinde bi if açıp null kontrolü yapmamıza yarıyor
      sum += money;
    }
    print("$item toplam bakiyesi: $sum");
  }
}