import 'dart:io';

void main() {
  print("Enter No.");
  int no = int.parse(stdin.readLineSync()!);

  List factor = [];
  bool isPrime=false;

  for (int i = 1; i <= no; i++) {
    if (no % i == 0) {
     for(int j=2;j<i;j++){
       if(i%2==0){
         print("$no is't ugly")
       }
       else{
         
       }
     }
    }
  }

  // var isPrimeFact=true;
  // for (int i = 0; i < factor.length; i++) {
  //   isPrime(factor[i]){
  //      if(factor[i]!=2 && factor[i]!=3 && factor[i]!=5){
  //        var isPrimeFact=false;
  //      }
  //   }
  // }
}

