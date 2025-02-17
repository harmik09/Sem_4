import 'dart:io';

void main(){
  print("Enter number");
  int n=int.parse(stdin.readLineSync()!);
  bool flag=true;
  for(int i=2;i<n;i++){
    if(i%2==0){
        flag=false;
        break;
    }
  }

  if(flag==true){
    print("$n is prime");
  }
  else{
    print("$n is not prime");
  }

}