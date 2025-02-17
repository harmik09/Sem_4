import 'dart:io';

void main(){
  print("Enter Weight:(in kg) ");
  double w=double.parse(stdin.readLineSync()!);

  print("Enter height:(in inch) ");
  double h=double.parse(stdin.readLineSync()!);

  double pound=w/0.45359237;
  double inch=h/0.254;

  double bmi=(pound/(inch*inch))*703;
  print("BMI: $bmi");
}