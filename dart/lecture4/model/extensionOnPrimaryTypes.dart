void main(List<String> args) {
  String name = "Admin";
  print(name.isAdmin);
  int number = 55;
  print(number.isEvenNumber);
  // burda null durumlar önemli 
  int? primeNumber;
  print(primeNumber.isEvenNumber);
  String? admin;
  print(admin.isAdmin());
  String? user = "Admin";
  print(user.isAdmin());
  String? nullString;
  print(nullString ?? "ITS ACTUALLY NOT HERE".toLowerCase());
}

// by kullanımı baya iyi 
extension checkAdmin on String?{
  // bool get isAdmin => this.toLowerCase() == "Admin".toLowerCase();
  // bunu nullable olarak kullanmak istediğimizde
  bool isAdmin() => (this ?? "").toLowerCase() == "Admin".toLowerCase();
 
}
// null durumlarına dikkat edilen extension
extension checkNumber on int?{
  bool isEvenNumber(){
    if(this == null){
      return false;
    }else{
      return this! % 2 == 0;
    }
  }
}