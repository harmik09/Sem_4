import 'dart:io';

void main(){
  print("Enter temprature in fehrenhit: ");
  double f=double.parse(stdin.readLineSync()!);

  double c=(f-32)*5/9;

  print("$f is celsius temprature: $c");
}

