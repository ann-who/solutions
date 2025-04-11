// https://www.codewars.com/kata/542c0f198e077084c0000c2e/dart

// Count the number of divisors of a positive integer n.

// Examples (input --> output)

// 4 --> 3 // we have 3 divisors - 1, 2 and 4
// 5 --> 2 // we have 2 divisors - 1 and 5
// 12 --> 6 // we have 6 divisors - 1, 2, 3, 4, 6 and 12
// 30 --> 8 // we have 8 divisors - 1, 2, 3, 5, 6, 10, 15 and 30

// Note you should only return a number, the count of divisors.
// The numbers between parentheses are shown only for you to see which numbers are counted in each case.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  final integer = elements.map(int.parse).first;

  int divisors(int integer) {
    var divisorsCount = 1;

    for (var i = 2; i <= integer; i++) {
      if (integer % i == 0) divisorsCount++;
    }
    return divisorsCount;
  }

  stdout.write(divisors(integer));
}
