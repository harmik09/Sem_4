import 'dart:io';

void main(){
  print("Hello World");

  print("Enter a:");
  int a=int.parse(stdin.readLineSync()!);
  print("Enter b:");
  int b=int.parse(stdin.readLineSync()!);

  print("sum of $a and $b is ${a+b}");
}