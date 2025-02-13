void main(List<String> args) {
    final CallBackUser ali = CallBackUser(money: 60);
    ali.calculateMoney((int result){
      print("result : ${result}");
    });
}

class CallBackUser {
  int money;
  CallBackUser({required this.money});
  void calculateMoney(void Function(int data) onComplete){
    money += 99;
    onComplete(money);
    // normalde veri dönmüyordu şimdi gerekli işlemleri yapıp bize sonuç dönecek
  }
}