// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3168#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();
  int index = int.parse(stdin.readLineSync(encoding: utf8)!);

  // Solution 1
  numbers.removeAt(index);
  stdout.write(numbers);

  // Solution 2
  // for (var i = index; i < numbers.length - 1; i++) {
  //   int temp = numbers[i];

  //   numbers[i] = numbers[i + 1];
  //   numbers[i + 1] = temp;
  // }

  // numbers.length--;

  // stdout.write(numbers);

  // Solution 3
  // for (var i = index; i < numbers.length - 1; i++) {
  //   int temp = numbers[i];

  //   numbers[i] = numbers[i + 1];
  //   numbers[i + 1] = temp;
  // }

  // numbers.removeLast();

  // stdout.write(numbers);

  // Solution 4

  // for (var i = index; i < numbers.length - 1; i++) {
  //   numbers[i] = numbers[i + 1];
  // }

  // numbers.length--;

  // stdout.write(numbers);
}
