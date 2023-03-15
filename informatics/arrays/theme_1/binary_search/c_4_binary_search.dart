// https://informatics.msk.ru/mod/statements/view.php?id=192&chapterid=4#1

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
    int leftOkIndex = 0;
    int rightOkIndex = arraysLength[0] - 1;
    bool sameNumberExists = false;

    while (leftOkIndex <= rightOkIndex) {
      midIndex = (rightOkIndex + leftOkIndex) ~/ 2;

      if (firstArray[midIndex] == secondArray[i]) {
        sameNumberExists = true;
        break;
      } else if (firstArray[midIndex] < secondArray[i]) {
        leftOkIndex = midIndex + 1;
      } else {
        rightOkIndex = midIndex - 1;
      }
    }

    if (sameNumberExists) {
      stdout.write('YES\n');
    } else {
      stdout.write('NO\n');
    }
  }
}
