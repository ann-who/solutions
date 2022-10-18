// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=344#1

import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  List<String> binaryNumber =
      stdin.readLineSync(encoding: utf8)!.split('').toList();
  List<int> binaryCharacters = binaryNumber.map(int.parse).toList();

  // Solution 1

  // int decimalNumber = 0;

  // for (var i = 0; i < binaryCharacters.length; i++) {
  //   var sum = decimalNumber * 2 + binaryCharacters[i];
  //   decimalNumber = sum;
  // }

  // stdout.write(decimalNumber);

  // Solution 2

  int decimalNumber = 0;
  int initialPow = 0;

  for (var i = binaryCharacters.length - 1; i >= 0; i--) {
    if (binaryCharacters[i] == 0) {
      initialPow += 1;
      continue;
    }
    decimalNumber += pow(2, initialPow).toInt();
    initialPow += 1;
  }

  stdout.write(decimalNumber);
}
