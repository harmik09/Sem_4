import 'dart:io';

void main(){
  stdout.write("Enter starting Number:");
  int start=int.parse(stdin.readLineSync()!);

  stdout.write("Enter Ending Number:");
  int end=int.parse(stdin.readLineSync()!);

  for(int i=start;i<=end;i++){
    if(i%2==0 && i%3!=0){
      stdout.write("$i ");
    }
  }
}