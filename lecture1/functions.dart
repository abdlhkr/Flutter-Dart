buyu_mu(a,b){
  if(a > b){
    return true;
  }else{
    return false;
  }
}

buyuEksiKucuk(a,b){
  int sonuc = 0;
  if (buyu_mu(a,b)){
    sonuc = a - b;
  }
  else{
    sonuc = b - a;
  }
  return sonuc;
}

  sifir(a){
  if(a == 0){
    print("sıfır");
  }else if(a > 0){
    print("pozitif");
    }
  else{
    print("negatif");
    }
  }

say_hello(a){
  int sayac = 0;
  while(sayac < a){
    print("Hello $a");
    sayac++;
  }
}
ucgen(a){
   int bosluk = a + 1;
   while (bosluk > 0){
     print(" " * bosluk + "*" * a);
     bosluk--;
     a += 2;
   }
}
//    .
//   ...  
//  .....
// .......
void main() {
  print(buyu_mu(5, 5));
  print(buyu_mu(5, 6));
  print(buyuEksiKucuk(10, 5));
  print(buyuEksiKucuk(19, 5));
  say_hello(55);
  print((15/2).toInt());
  ucgen(5);
}