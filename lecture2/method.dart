import 'dart:math';
void main(List<String> args) {
    List <int> moneys = [100,200,300,400,500,600,700,800,900,1000];
    moneys.shuffle(Random()); // shuffle methodu ile liste karıştırılabilir
    for (int i in moneys){
      controleUserMoney(i,700);
    }

    // to call a method which has a default value parameter
    print(standartCovertToDolar(1000,dolar: 35.99));
    // direk olarak hangi variable'ye atayacağını belirtmek için
    // dart dilinde The parameter 'money' can't have a value of 'null'
    //eğer default değeri vermezsen null atanır ve hata verir7
    print( standartCovertToDolarV2(money: 9999,dolar: 35.99));
    //Dart dilinde pythondaki gibi farklı veri tipleri içeren
    // bi liste tanımlanabilir
    List <dynamic> mylist = [1,2,3,4,5,6,7,8,9,10,"hello","world"];
    // ama bunu kullanma  çünkü kontrolü vesaire zor olur
    
}

controleUserMoney(int money,int limit){
    if (money >= limit){
      print("you can go for a dinner tonight");
    }else{
      print("you might start thinking working harder");
    }
}

int convertToDolar(int money, double dolar){
    return (money ~/ dolar); // ~/ operatörü bölme işleminden sonra
                            // tam sayıya yuvarlar
    // bu kodda önemli nokta sürekli dolar kuru değişebilir
    // yani geliştirmeye açık bir kod                     
} 

int standartCovertToDolar(int money,{double dolar = 1}){
    return (money ~/ dolar);
    // {double dolar = 1} burada dolar değeri verilmezse 1 alınır
    // pythondaki köşeli olmaadan yaptığın şey
}
int standartCovertToDolarV2({ required int money,double dolar = 1}){
    return (money ~/ dolar);
    // {double dolar = 1} burada dolar değeri verilmezse 1 alınır
    // pythondaki köşeli olmaadan yaptığın şey
    // null atamadan kanaklı hatayı almamak için required kullanılır
}