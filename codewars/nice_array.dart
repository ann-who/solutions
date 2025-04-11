// https://www.codewars.com/kata/59b844528bcb7735560000a0
//
// A Nice array is defined to be an array where for every value n in the array, there is also an element n - 1 or n + 1 in the array.

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> integers = elements.map(int.parse).toList();

  bool isNice(List<int> integers) {
    if (integers.isEmpty) return false;

    for (var i = 0; i < integers.length; i++) {
      final a = integers[i] + 1;
      final b = integers[i] - 1;
      if (!integers.contains(a) && !integers.contains(b)) return false;
    }

    return true;
  }

  stdout.write(isNice(integers));
}
