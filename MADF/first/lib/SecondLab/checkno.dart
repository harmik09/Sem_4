import 'dart:io';

void main(){
  print("Enter no:");
  int no=int.parse(stdin.readLineSync()!);

  if(no>0){
    print("$no is positive");
  }
  else if(no<0){
    print("$no is negative");
  }
  else{
    print("$no is zero");
  }
}