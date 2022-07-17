// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=303#1

import 'dart:convert';
import 'dart:io';

void main() {
  int cowsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  bool isExceptionNumber = (11 <= cowsQuantity && cowsQuantity <= 14);
  int remainder = cowsQuantity % 10;

  if (isExceptionNumber || remainder == 0 || remainder >= 5) {
    stdout.write('$cowsQuantity korov');
  } else if (remainder == 1) {
    stdout.write('$cowsQuantity korova');
  } else if (2 <= remainder && remainder <= 4) {
    stdout.write('$cowsQuantity korovy');
  }
}
