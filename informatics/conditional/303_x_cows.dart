// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=303#1

import 'dart:convert';
import 'dart:io';

void main() {
  int cowsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  if (cowsQuantity % 10 == 1) {
    stdout.write('$cowsQuantity korova');
  } else if (2 <= cowsQuantity % 10 && cowsQuantity % 10 <= 4) {
    stdout.write('$cowsQuantity korovy');
  } else if (5 <= cowsQuantity % 10 || cowsQuantity % 10 == 0) {
    stdout.write('$cowsQuantity korov');
  }
}
