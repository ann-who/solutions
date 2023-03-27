// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3167#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int minIndex = 0;
  int maxIndex = 0;

  for (var i = 1; i < numbers.length; i++) {
    if (numbers[minIndex] > numbers[i]) {
      minIndex = i;
    } else if (numbers[maxIndex] < numbers[i]) {
      maxIndex = i;
    }
  }

  int temp = numbers[minIndex];
  numbers[minIndex] = numbers[maxIndex];
  numbers[maxIndex] = temp;

  stdout.write(numbers);
}
