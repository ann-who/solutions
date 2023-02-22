// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=69#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> integers = elements.map(int.parse).toList();

  /// Solution 1 (using reversed method)

  // integers = integers.reversed.toList();

  /// Solution 2 (using another list)

  // List<int> reversedList = [];
  // if (integers.isEmpty) {
  //   stdout.write('List is empty');
  // } else {
  //   for (var i = totalElementsQuantity - 1; i >= 0; i--) {
  //     int lastInt = integers[i];
  //     reversedList.add(lastInt);
  //   }
  // }

  /// Solution 3 (split list)

  int midIndex = totalElementsQuantity ~/ 2;

  for (var i = 0; i < midIndex; i++) {
    int leftInt = integers[i];
    int rightInt = totalElementsQuantity - 1 - i;

    var temp = leftInt;
    leftInt = integers[rightInt];
    integers[rightInt] = temp;
  }

  /// Solution 4 (refactor 3rd solution)

  // int midIndex = totalElementsQuantity ~/ 2;
  // int temp = 0;

  // var j = totalElementsQuantity - 1;
  // for (var i = 0; i < midIndex; i++, --j) {
  //   temp = integers[i];
  //   integers[i] = integers[j];
  //   integers[j] = temp;
  // }

  stdout.write(integers);
}
