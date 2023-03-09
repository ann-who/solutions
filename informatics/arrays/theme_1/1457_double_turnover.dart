// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=1457#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> numbers = elements.map(int.parse).toList();
  List<int> partToMix = [];

  // regular sequence list
  List<int> regularList = List<int>.generate(numbers[0], (index) => index + 1);

  int a = numbers[1];
  int b = numbers[2];
  int c = numbers[3];
  int d = numbers[4];
  int tempI = 1;

  partToMix = regularList.getRange(a - 1, b).toList();
  for (var i = 0; i < partToMix.length ~/ 2; i++) {
    var tempInt = regularList[a - 1 + i];
    regularList[a - 1 + i] = regularList[b - tempI];
    regularList[b - tempI] = tempInt;

    tempI++;
  }

  tempI = 1;

  partToMix = regularList.getRange(c - 1, d).toList();
  for (var i = 0; i < partToMix.length ~/ 2; i++) {
    var tempInt = regularList[c - 1 + i];

    regularList[c - 1 + i] = regularList[d - tempI];
    regularList[d - tempI] = tempInt;
    tempI++;
  }

  stdout.write(regularList);
}
