// https://informatics.msk.ru/mod/statements/view.php?id=249&chapterid=3076#1

import 'dart:convert';
import 'dart:io';

void main() {
  int givenNumber = int.parse(stdin.readLineSync(encoding: utf8)!);
  int wantedNumber = int.parse(stdin.readLineSync(encoding: utf8)!);

  String minusOperation = '-1\n';
  String divideOperation = ':2\n';

  while (givenNumber != wantedNumber) {
    if (givenNumber % 2 == 0) {
      givenNumber ~/= 2;
      stdout.write(divideOperation);
    } else {
      givenNumber = givenNumber - 1;
      stdout.write(minusOperation);
    }
  }
}
