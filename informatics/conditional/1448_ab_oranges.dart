// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=1448#1

import 'dart:convert';
import 'dart:io';

void main() {
  int orangesQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (orangesQuantity % 10 == 1) {
    stdout.write('$orangesQuantity bochka');
  } else if (2 <= orangesQuantity % 10 && orangesQuantity % 10 <= 4) {
    stdout.write('$orangesQuantity bochki');
  } else if (5 <= orangesQuantity % 10 || orangesQuantity % 10 == 0) {
    stdout.write('$orangesQuantity bochek');
  }
}
