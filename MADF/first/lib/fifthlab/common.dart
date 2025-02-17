import 'dart:io';

class Common {
  List<int> list1;
  List<int> list2;

  Common({required this.list1, required this.list2});

  void commonDigitDisplay() {
    for (int i = 0; i < list1.length; i++) {
      for (int j = 0; j < list2.length; j++) {
        if (list1[i] == list2[j]) {
          stdout.write('${list1[i]},');
        }
      }
    }
  }
}

void main() {
  List<int> list1 = [10, 20, 30, 40, 50];
  List<int> list2 = [30, 40, 50, 60, 70];

  Common cm = new Common(list1: list1, list2: list2);

  cm.commonDigitDisplay();
}
