// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3166#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  for (var i = 1; i < numbers.length; i++) {
    int leftIndex = 0; // as we always move first element
    int rightIndex = i;

    int temp = numbers[leftIndex];

    numbers[leftIndex] = numbers[rightIndex];
    numbers[rightIndex] = temp;
  }

  stdout.write(numbers);
}
