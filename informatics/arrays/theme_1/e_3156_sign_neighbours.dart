// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3156#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int leftNumber = numbers[0];

  for (var i = 1; i < numbers.length; i++) {
    if (leftNumber > 0 && numbers[i] > 0 || leftNumber < 0 && numbers[i] < 0) {
      stdout.write('$leftNumber ${numbers[i]}');
      break;
    } else {
      leftNumber = numbers[i];
    }
  }
}
