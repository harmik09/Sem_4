import 'dart:io';

void main(){
  print("first subject mark:");
  double first=double.parse(stdin.readLineSync()!);

  print("Second subject mark:");
  double second=double.parse(stdin.readLineSync()!);

  print("third subject mark:");
  double third=double.parse(stdin.readLineSync()!);

  print("fourth subject mark:");
  double fourth=double.parse(stdin.readLineSync()!);

  print("fifth subject mark:");
  double fifth=double.parse(stdin.readLineSync()!);

  double persentage=((first+second+third+fourth+fifth)/500)*100;

  print(persentage);
  if(persentage<35){
    print("Fail");
  }
  else if(persentage>35 && persentage<45){
    print("Pass Class");
  }
  else if(persentage>45 && persentage<60){
    print("Second Class");
  }
  else if(persentage>60 && persentage<70){
    print("First Class");
  }
  else if(persentage>70){
    print("Distinction");
  }
}