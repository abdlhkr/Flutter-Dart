Future<void> main(List<String> args) async {
    print("a");
    // bundan sonra 5sn beklesin bu sırada müşteri almasın 
    //  Future.delayed(Duration(seconds: 5)); // bu kullanımda burdaki işlem sonra başlar 
    // ama sonraki şlemler bu 5 saniye içinde devam eder
    // await Future.delayed(Duration(seconds: 5));
    // yukarıdaki kullanımda önce bekler sonra işlemi yapar

/*     Future.forEach([1,2,3,4,5,6],(int element) async{
        await Future.delayed(Duration(seconds: 2));
        print("valeu : $element");
    });
    print("ab"); */


    print("hello");
      Future.delayed(Duration(seconds: 2)).whenComplete((){
          print("hello2");
      });
      print("hello3");
      Future.delayed(Duration(seconds: 1)).whenComplete((){
        print("hello4");
    });

    // burda senkron işlem yaptığımız için önce bekleme olmayanlar yani hello , hello3 geldi
    // bunlar bittikten sonra hello2 hwllo4

//Dart dili default ta single thread çalışır
// bir servise istek attın direk gelmez cevap yada yğksek hesaplama gerektiren bi konu

// senkron ise normal sırayla işlenir ama sonradan gelecek veriler normal verilerden
// sonrası için saklanır

Stream<int> bankMoney = Stream.empty();
bankMoney = dataAddBankMoney(10, 20);
bankMoney.listen((event) => print(event));

}

Stream<int> dataAddBankMoney(int retryCount,int money) async*{
  int localRetry = 0;
  while(localRetry < retryCount){
    localRetry++;
    yield money += 5; // burdaki beş sallama sayı
  }
}