// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3164#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  // Solution 1 (with temp)

  // int midIndex = numbers.length ~/ 2;

  // for (var i = 0; i < midIndex; i++) {
  //   int leftIndex = i;
  //   int rightIndex = numbers.length - i - 1;

  //   int temp = numbers[leftIndex];

  //   numbers[leftIndex] = numbers[rightIndex];
  //   numbers[rightIndex] = temp;
  // }

  // stdout.write(numbers);

  // Solution 2 (optimized)

  int midIndex = numbers.length ~/ 2;
  int j = numbers.length - 1; // rightIndex

  for (var i = 0; i < midIndex; i++, j--) {
    int temp = numbers[i];

    numbers[i] = numbers[j];
    numbers[j] = temp;
  }

  stdout.write(numbers);
}
