import 'dart:io';

void main(){
  print("enter metre:");
  double metre=double.parse(stdin.readLineSync()!);
  double feet=metre*3.280;
  print("Feet: $feet");
}