// https://informatics.msk.ru/mod/statements/view.php?id=192#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> arraysLength = elements.map(int.parse).toList();
  List<String> elements2 = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> firstArray = elements2.map(int.parse).toList();
  List<String> elements3 = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> secondArray = elements3.map(int.parse).toList();

  int midIndex;

  for (var i = 0; i < arraysLength[1]; i++) {
    int leftOk = 0;
    int rightOk = arraysLength[0] - 1;

    while (rightOk - leftOk > 1) {
      midIndex = (rightOk + leftOk) ~/ 2;

      if (firstArray[midIndex] < secondArray[i]) {
        leftOk = midIndex;
      } else {
        rightOk = midIndex;
      }
    }

    if (secondArray[i] - firstArray[leftOk] <=
        firstArray[rightOk] - secondArray[i]) {
      stdout.write('${firstArray[leftOk]}\n');
    } else {
      stdout.write('${firstArray[rightOk]}\n');
    }
  }
}
