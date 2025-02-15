void main(List<String> args) {
  String? userName = "a";

/*   try{
    // burda force lamazsan çalışmaz zaten direk
    if(userName!.length > 16){
      print("user name should be 5-16 character");
    }
  }catch(e){
    // Null check operator used on a null value
    print(e);
  } */
 if(userName.length > 20){
  print("a");
 }else{
    throw userNameException();
 }
}

// custom error ayarlama
class userNameException implements Exception{
  @override
  String toString() {
    // TODO: implement toString
      return "User name olarak null value girilemez";
  }
}