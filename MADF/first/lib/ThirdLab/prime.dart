import 'dart:io';

void main(){
  stdout.write("Enter Number:");
  int no=int.parse(stdin.readLineSync()!);

  bool isPrime=true;
  for(int i=2;i<no;i++){
    if(no%i==0){
      isPrime=false;
      break;
    }
  }

  if(isPrime){
    stdout.write("$no is prime");
  }
  else{
    stdout.write("$no is not prime");
  }
}