import 'dart:io';

void main(){
  stdout.write("Enter Number:");
  int no=int.parse(stdin.readLineSync()!);
  int rev=0;

  while(no>0){
    int rem=no%10;
    rev=rev*10+rem;
    no=no~/10;
  }
  print(rev);
}