import 'dart:io';

void main(){
  stdout.write("Enter Number:");
  int number=int.parse(stdin.readLineSync()!);

  int isPrime=checkPrime(number);

  if(isPrime==0){
    stdout.write('$number is not prime');
  }
  else{
    stdout.write('$number is prime');
  }
}

int checkPrime(int number){
    for(int i=2;i<number;i++){
      if(number%i==0)
        return 0;
    }
    return 1;
}