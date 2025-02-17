import 'dart:io';

void main(){
  stdout.write('Enter Limit');
  int limit=int.parse(stdin.readLineSync()!);

  getFibonacci(limit);
}

void getFibonacci(int limit){
  int n1=0;
  int n2=1;
  stdout.write('$n1, $n2,');
  for(int i=2;i<limit;i++){
    int sum=n1+n2;
    stdout.write('$sum,');
    n1=n2;
    n2=sum;
  }
}