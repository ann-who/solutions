// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2941#1

import 'dart:convert';
import 'dart:io';

void main() {
  int givenNumber = int.parse(stdin.readLineSync(encoding: utf8)!);

  int lastNumber = givenNumber % 10;

  stdout.write(lastNumber);
}
