import 'dart:io';

void main(){
  print("enter 5 subject marks:");
  double m1=double.parse(stdin.readLineSync()!);
  double m2=double.parse(stdin.readLineSync()!);
  double m3=double.parse(stdin.readLineSync()!);
  double m4=double.parse(stdin.readLineSync()!);
  double m5=double.parse(stdin.readLineSync()!);

  double sum=m1+m2+m3+m4+m5;
  double persentage=(sum/500)*100;
  
  print("Persentage is: $persentage");
}