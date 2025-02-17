import 'dart:io';

void main(){
  print("Enter 1st no:");
  int first=int.parse(stdin.readLineSync()!);

  print("Enter 2nd no:");
  int second=int.parse(stdin.readLineSync()!);

  print("Enter operation:");
  String ope=stdin.readLineSync()!;

  switch(ope){
    case '+':{
        print("Addition is ${first+second}");
        break;
    }
    case '-':{
      print("Subtraction is ${first-second}");
      break;
    }
    case '*':{
      print("Multiplication is ${first*second}");
      break;
    }
    case '/':{
      print("Divion is ${first/second}");
      break;
    }
    default:{
      print("Invalid operation");
      break;
    }
  }
}