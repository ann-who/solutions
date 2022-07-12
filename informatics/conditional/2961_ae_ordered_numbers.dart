// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=2961#1

import 'dart:convert';
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync(encoding: utf8)!);
  int b = int.parse(stdin.readLineSync(encoding: utf8)!);
  int c = int.parse(stdin.readLineSync(encoding: utf8)!);

  int smallestNumber;
  int middleNumber;
  int biggestNumber;

  if (a < b && a < c) {
    smallestNumber = a;
  } else if (b < a && b < c) {
    smallestNumber = b;
  } else {
    smallestNumber = c;
  }

  if (a > b && a > c) {
    biggestNumber = a;
  } else if (b > a && b > c) {
    biggestNumber = b;
  } else {
    biggestNumber = c;
  }

  if (a < biggestNumber && a > smallestNumber) {
    middleNumber = a;
  } else if (b < biggestNumber && b > smallestNumber) {
    middleNumber = b;
  } else {
    middleNumber = c;
  }

  stdout.write('$smallestNumber $middleNumber $biggestNumber');
}
