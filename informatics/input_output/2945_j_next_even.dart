// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2945#1

import 'dart:convert';
import 'dart:io';

void main() {
  int givenNumber = int.parse(stdin.readLineSync(encoding: utf8)!);

  int nextEven = givenNumber + 2 - givenNumber % 2;

  stdout.write(nextEven);
}
