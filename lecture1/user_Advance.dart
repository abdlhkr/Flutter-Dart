import 'dart:io';
void main() {
    // U can use var instead of types but dont do it 
    var name = "abdullah";
    print(name);
    // int the code u cant change the value of a final or a const value
    final int bank_money = 100;
    const int money = 500;
    print(bank_money + money);
    // the line below will cause an error
    // money -= bank_money; // Constant variables can't be assigned a value
    //  bank_money += money; The final variable 'bank_money' can only be set once
    // final ve const arasındaki fark final runtime da atanabilirken
    // const variablın atanmadan oluşturalamamasıdır

  //  const bankName = "VBbank";
  //  String userOne = "bank1musteri";
    int bankOneValue = 999;
    // yeni gelen kişinin sahip olduğu paratı 1 den çıkarıp göster
    int userTwo = 50;
     int value = bankOneValue - userTwo;
    print('$value is the net value');

    double valueTwo = 999.99;
    print(valueTwo.toInt());

    int sayi  = 1;
    print(sayi);
    int newNumber = 0;
    while(newNumber == 0 && sayi < 10){
      print(sayi);
      sayi++;


      stdout.write("kısa kenarın uzunluğunu giriniz: ");
      int? kisa = int.tryParse(stdin.readLineSync() ?? '');
      print(kisa);
    }
}  