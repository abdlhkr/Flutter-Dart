void main() {
    final int classDegree = 2;
    // 2 ise ekrana bravo
    // 1 se olur 
    // 0 ise yeterlia
    // -1 ise başarısız

    const int seccessValueHigh = 2;
    switch(classDegree){
      case seccessValueHigh:
        print("Bravo");
        break;
      case 1:
        print("Olur");
        break;
      case 0:
        print("Yeterli");
        break;
      case -1:
        print("Başarısız");
        break;
      default:
        print("Geçersiz not");
    }
}