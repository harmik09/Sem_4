import 'dart:io';

void main(){
  stdout.write("Enter Numbwer:");
  int no=int.parse(stdin.readLineSync()!);
  int fact=1;
  for(int i=no;i>0;i--){
    fact*=i;
  }
  
  stdout.write("Factorial is $fact");
}