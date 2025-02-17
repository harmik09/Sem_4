import 'dart:io';

void main(){
  print("Enter 1st no:");
  int first=int.parse(stdin.readLineSync()!);

  print("Enter 2nd no:");
  int second=int.parse(stdin.readLineSync()!);

  print("Enter 3rd no:");
  int third=int.parse(stdin.readLineSync()!);

  if(first>second){
    if(first>third){
      print("$first is largest no");
    }
    else{
      print("$third is largest no");
    }
  }
  else{
    if(second>third){
      print("$second is largest no");
    }
    else{
      print("$third is largest no");
    }
  }
}