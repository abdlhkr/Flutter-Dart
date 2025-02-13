void main(List<String> args) {
  Status myStatus = Status.active;
  // bu aslında sınıfla uğraşmanın kolay yolu gibi bişey
  // bunu kullanma senaryosu olarak hangi tipte user kullanalıcaksa
  // ona göre girdi alıp ona göre işlem yapabiliriz
  switch(myStatus){
    case Status.active:
      print("Active");
      break;
    case Status.inactive:
      print("Inactive");
      break;
    case Status.pending:
      print("Pending");
      break;
    case Status.deleted:
      print("Deleted");
      break;
  } 
}

enum Status{
  active,
  inactive,
  pending,
  deleted
}

extension StatusSelectedExtension on Status{
  bool isCheckName(String name){
    return this.name == name;
  }
}