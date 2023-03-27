// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3171#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  for (var i = 0; i < numbers.length; i++) {
    bool isNumberUnique = false;
    int uniqueNumber = numbers[i];
    int uniqueNumberIndex = i;

    for (var j = 0; j < numbers.length; j++) {
      if (uniqueNumber == numbers[j] && uniqueNumberIndex != j) {
        isNumberUnique = false;
        break;
      } else {
        isNumberUnique = true;
      }
    }

    if (isNumberUnique == true) {
      stdout.write('$uniqueNumber ');
    }
  }
}
