import 'dart:io';

void main(){
  stdout.write('Enter Strating Number:');
  int start=int.parse(stdin.readLineSync()!);

  stdout.write('Enter Ending Index:');
  int end=int.parse(stdin.readLineSync()!);

  List<int> list=[];

  for(int i=start;i<=end;i++){
    bool isPrime=true;
    for(int j=2;j<i;j++){
      if(i%j==0) {
        isPrime = false;
        break;
      }
    }
    if(isPrime){
      list.add(i);
    }
  }

  stdout.write('Prime Range: $list');
}