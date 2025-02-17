import 'dart:io';

void main(){
   stdout.write('Enter 2 Numbers:');
   int first=int.parse(stdin.readLineSync()!);
   int second=int.parse(stdin.readLineSync()!);

   int max=maxNum(first, second);

   stdout.write('Maximum Number is $max');
}

int maxNum(int first, int second){
  if(first>second)
    return first;
  else
    return second;
}