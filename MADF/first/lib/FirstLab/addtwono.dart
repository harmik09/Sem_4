import 'dart:io';

void main(){
  int a=int.parse(stdin.readLineSync()!);
  int b=int.parse(stdin.readLineSync()!);

  int add=a+b;

  print("Addition of $a and $b: $add");
}