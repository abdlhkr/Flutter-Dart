void main() {
  // java ile aynı direk
  List <int> musteriler = [1,2,3,4,5,6,7,8,9,10];
  // kısa yolda çalışıyor çok iyi
  for(int i in musteriler){
    print(i);
  }
  List <int> moneys = [100,200,300,400,500,600,700,800,900,1000];
  int rich = 0;
  for(int i in moneys){
    if (i >= 500){
      rich++;
    }
  }
  print("there are $rich people in this list");


  // final liste üzerinde ekleme silme yapılabilir
  final List <int> numbers = [1,2,3,4,5,6,7,8,9,10];
  numbers.add(15);
  numbers.remove(5);
  print(numbers);
  numbers[3] = 100;
  print(numbers);
  // listede final olması pek bişey ifade etmiyor kısaca
  // ama const ile tanımlanırsa liste üzerinde hiçbir işlem yapılamaz
  const List <int> numbers2 = [1,2,3,4,5,6,7,8,9,10];
  // numbers2.add(15); // hata verir
  // numbers2.remove(5); // hata verir
  // numbers2[3] = 100; // hata verir
  print(numbers2);
  List <double> customerMoney = List.generate(9,(index) {
    return (index + 1) * 10.0;
  }); 
  print(customerMoney);

}