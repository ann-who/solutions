// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=2961#1

import 'dart:convert';
import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync(encoding: utf8)!);
  String result = '';

  int decades = x ~/ 10;
  int unities = x % 10;

  if (decades == 10) {
    result += 'C';
  } else if (decades == 9) {
    result += 'XC';
  } else if (decades >= 5) {
    result += 'L' + 'X' * (decades % 5);
  } else if (decades == 4) {
    result += 'XL';
  } else {
    result += 'X' * (decades % 5);
  }

  if (unities == 9) {
    result += 'IX';
  } else if (unities >= 5) {
    result += 'V' + 'I' * (unities % 5);
  } else if (unities == 4) {
    result += 'IV';
  } else {
    result += 'I' * (unities % 5);
  }

  stdout.write(result);
}
