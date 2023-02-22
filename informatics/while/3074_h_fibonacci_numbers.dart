// https://informatics.msk.ru/mod/statements/view.php?id=249&chapterid=3074#1

import 'dart:convert';
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync(encoding: utf8)!);

  int fibonacciZero = 0;
  int fibonacciOne = 1;
  int i = 1;
  var fibonacciNumber;

  if (number == 1) {
    stdout.write(fibonacciOne);
  } else if (number == 0) {
    stdout.write(fibonacciZero);
  } else {
    while (i < number) {
      fibonacciNumber = fibonacciZero + fibonacciOne;

      fibonacciZero = fibonacciOne;
      fibonacciOne = fibonacciNumber;
      ++i;
    }
    stdout.write(fibonacciNumber);
  }
}
