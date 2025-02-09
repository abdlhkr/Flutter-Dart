void main(List<String> args) {
    int money = Product.money;
    //direk erişimi var
}

class Product{
  static int money = 99;
  void calculateMoney(){
    money = (money > 50) ? money += 5 : 0;
    
  }
}