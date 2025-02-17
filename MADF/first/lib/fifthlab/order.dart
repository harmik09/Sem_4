import 'dart:io';

class ListClass{
  void displayIncresing(List<int> list){
    for(int i=0;i<list.length;i++) {
      for (int j = i; j < list.length-1; j++) {
        if (list[j] > list[j + 1]) {
          int temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
    stdout.write('Increasing order List is $list');
  }

}

void main() {
  ListClass lc = new ListClass();
  List<int> list = [];
  stdout.write('Enter five number');
  for (int i = 0; i < 5; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }
  lc.displayIncresing(list);
}