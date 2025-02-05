void main(List<String> args) {
  int newMoney;
  // print(newMoney) 'newMoney' must be assigned before it can be used.
  // dart dili null safety olduğu için değişkenlere değer atamadan kullanamayız
  // bu yüzden değişkenlere değer atamadan kullanamayız
  //değeri sonradan belirlenecek bi variable atamak için
  int? newMoney2; // null olabilecek değerler bu şekilde kullanılır
  print(newMoney2); 
  print(newMoney2 ?? 0); // null ise 0 yap
  //bide ! var sıkıntılı biraz null olmayacağını belirtir
  // ama null olursa hata verir örneğin
  print(newMoney2!); // null olursa hata verir
  // Null check operator used on a null value
}

