// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3174#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  for (var i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] == 0) {
      int temp = numbers[i];
      for (var j = i + 1; j < numbers.length; j++) {
        if (numbers[j] != 0) {
          numbers[i] = numbers[j];
          numbers[j] = temp;
          break;
        }
      }
    }
  }

  stdout.write(numbers);
}
