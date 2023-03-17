// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3155#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int leftIndex = 0;

  for (var i = 1; i < numbers.length; i++) {
    if (numbers[leftIndex] < numbers[i]) {
      stdout.write('${numbers[i]} ');
    }
    leftIndex = i;
  }
}
