// https://informatics.msk.ru/mod/statements/view.php?id=208#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');

  for (var i = 0; i < totalElementsQuantity; i += 2) {
    stdout.write('${elements[i]} ');
  }
}
