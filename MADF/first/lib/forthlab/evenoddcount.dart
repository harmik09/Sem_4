import 'dart:io';

void main(){
  List<int> list=[1,2,3,4,5,6,7,8,9];

  int evenCount=0;
  int oddCount=0;

  for(int i=0;i<list.length;i++){
    if(list[i]%2==0){
      evenCount++;
    }
    else{
      oddCount++;
    }
  }

  stdout.write('Even Number is $evenCount and Odd Number is $oddCount');
}

