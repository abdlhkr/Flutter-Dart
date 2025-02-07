void main(List<String> args) {
  
}

class User{
  String? name;
  late int _id;
  User(this.name,{required int id}){
    this._id = id;
  }

}
extension controlUserExtension on User{
  // extensionun güçlü yanı classın içine
  // müdahale etmeden yeni methodlar ekleyebiliriz ve
  // private değişkenlere erişebiliriz
  bool get controlID => _id % 2 == 0; 
}
