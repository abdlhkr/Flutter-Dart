import 'dart:io';
void main() {
  print("ne kadar paranız var : ");
  String moneyString = stdin.readLineSync().toString();
  int money = int.parse(moneyString);
  
  if(money > 100){
    print("en azından bi tavuk piav yersin tamam");
  }else if(money > 50){
    print("you should go with snacks");
  }else{
    print("aç kaldın ");
  }

  
}