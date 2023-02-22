// https://informatics.msk.ru/mod/statements/view.php?id=249&chapterid=3075#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int fibonacciOne = 1;
  int fibonacciTwo = 1;
  int i = 2;
  var fibonacciNumber;

  while (number != fibonacciNumber) {
    fibonacciNumber = fibonacciOne + fibonacciTwo;

    fibonacciOne = fibonacciTwo;
    fibonacciTwo = fibonacciNumber;
    ++i;
  }
  stdout.write(i);

  // stdout.write('-1');
}
