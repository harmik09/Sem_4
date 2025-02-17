import 'dart:io';

void main(){
  // "3 * 4 / 4 + 5"
  print("Enter Input:");
  String input=stdin.readLineSync()!;

  List<String> inlist=[];
  inlist.runes.forEach((int ch) {
    if(ch=="+" || ch=="-" || ch=="*" || ch=="/"){

    }
  });
  // inlist=input.split("");
  //
  print(inlist);
}