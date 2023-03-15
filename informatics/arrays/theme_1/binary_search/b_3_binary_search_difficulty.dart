// https://informatics.msk.ru/mod/statements/view.php?id=192&chapterid=3#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  int questionCounter = 0;
  int middleIndex;

  int leftOkIndex = 0;
  int rightOkIndex = totalElementsQuantity - 1;

  while (leftOkIndex < rightOkIndex) {
    middleIndex = (leftOkIndex + rightOkIndex) ~/ 2;

    questionCounter++;

    rightOkIndex = middleIndex;
  }

  stdout.write(questionCounter);
}
