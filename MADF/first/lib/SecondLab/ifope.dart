import 'dart:io';

void main() {
  print("Enter 1st no:");
  int first = int.parse(stdin.readLineSync()!);

  print("Enter 2nd no:");
  int second = int.parse(stdin.readLineSync()!);

  print("Enter operation:");
  String ope = stdin.readLineSync()!;

  if(ope=='+'){
    print("Addition is ${first-second}");
  }
  if(ope=='-'){
    print("Subtraction is ${first-second}");
  }
  if(ope=='*'){
    print("Multiplication is ${first*second}");
  }
  if(ope=='/'){
    print("Division is ${first/second}");
  }

}