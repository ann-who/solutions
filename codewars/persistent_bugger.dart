// https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec/train/dart
//
// Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence,
// which is the number of times you must multiply the digits in num until you reach a single digit.
//
// For example (Input --> Output):
//
// 39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit, there are 3 multiplications)
// 999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2, there are 4 multiplications)
// 4 --> 0 (because 4 is already a one-digit number, there is no multiplication)

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  final integer = elements.map(int.parse).first;

  int persistence(int integer) {
    var multiplicationCounter = 0;
    var initialLength = 0;
    const perfectLength = 1;

    var ints = _elementSplitter(integer);

    if (ints.length == 1) return multiplicationCounter;

    while (initialLength != perfectLength) {
      var result = 1;
      for (var i = 0; i < ints.length; i++) {
        result *= ints[i];
      }
      ints = _elementSplitter(result);
      multiplicationCounter++;
      initialLength = ints.length;
    }

    return multiplicationCounter;
  }

  stdout.write(persistence(integer));
}

List<int> _elementSplitter(int integer) => '$integer'.split('').map(int.parse).toList();
