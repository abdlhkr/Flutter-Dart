void main(List<String> args) {
  // burdaki mantık sınıfın kendi içinde değiştirilemez ama 
  //farklı sınıflarla büyütülebilir olması
  // diğer bi olaysa bi sınıfın alt sınıflarla geliştirilebilir olması
  Database database = SQL();
  // işte bişey oldu bunu mongo yapıcaz
  database = Mongo(); // diyip bi sorun olmadan işleme devam edebiliriz
}

class Product{
  String name;
  double price;
  Product(this.name,this.price);
} 

class ProductCategory extends Product{
  String category;
  ProductCategory(String name, double price, this.category) : super(name, price);

}

// kullanım senaryosu olarak aynı database sınıfından türeyen sınıflar kullanılırsa 
// database değiştirme işlemi bizim için çok kolay olur

abstract class Database{
  void write();
  void read();
  void create();
  void update();
}

class SQL extends Database{
  @override
  void create() {
      print("kullanıcı oluşturuldu");
  }

  @override
  void read() {
    print("kullanıcı bilgisi alındı ");
  }

  @override
  void update() {
    // TODO: implement update
  }

  @override
  void write() {
    // TODO: implement write
  }
}

class Mongo extends Database{
  @override
  void create() {
    // TODO: implement create
  }

  @override
  void read() {
    // TODO: implement read
  }

  @override
  void update() {
    // TODO: implement update
  }

  @override
  void write() {
    // TODO: implement write
  }
  
}