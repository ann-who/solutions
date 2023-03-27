// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3165#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  for (var i = 0; i < numbers.length - 1; i += 2) {
    int leftIndex = i;
    int rightIndex = i + 1;

    int temp = numbers[leftIndex];

    numbers[leftIndex] = numbers[rightIndex];
    numbers[rightIndex] = temp;
  }

  stdout.write(numbers);
}
