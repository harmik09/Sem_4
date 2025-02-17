import 'dart:io';

void main() {
  print("Enter 1st no:");
  int first = int.parse(stdin.readLineSync()!);

  print("Enter 2nd no:");
  int second = int.parse(stdin.readLineSync()!);

  print("Enter 3rd no:");
  int third = int.parse(stdin.readLineSync()!);

  int max= (first>second && first>third)?first:(second>third)?second:third;
  
  print("Largest no is $max");
}