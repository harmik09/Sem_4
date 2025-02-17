import 'dart:io';

void main(){
  int positiveSum=0;
  int negativeSum=0;
  // List<int> set=getSet();

  for(;;){
    stdout.write("Enter No.(if want to exit that enter 0)");
    int no=int.parse(stdin.readLineSync()!);

    if(no==0){
      break;
    }
    else if(no>0){
      if(no%2==0) {
        positiveSum += no;
      }
    }
    else{
      if(no%2!=0) {
        negativeSum += no;
      }
    }
  }

  stdout.writeln("Summation of Positive Even No: $positiveSum");
  stdout.writeln("Summation of Negative Odd No: $negativeSum");
}


