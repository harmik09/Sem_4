import 'dart:io';

void main(){
  print("Enter n:");
  int n=int.parse(stdin.readLineSync()!);
  int fact = n;
   for(int i=n-1;i>=1;i--){
     fact=fact * i;
   }
   print("Factorial: $fact");
}