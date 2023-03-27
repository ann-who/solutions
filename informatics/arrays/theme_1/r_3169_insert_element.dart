// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3169#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> numbers = elements.map(int.parse).toList();
  List<String> elements2 = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> indexAndElement = elements2.map(int.parse).toList();
  int index = indexAndElement[0];
  int elementToInsert = indexAndElement[1];

  // Solution 1
  numbers.insert(index, elementToInsert);
  stdout.write(numbers);

  // Solution 2
  // numbers.add(elementToInsert);
  // while (numbers[index] != elementToInsert) {
  //   for (var i = index; i < numbers.length - 1; i++) {
  //     int temp = numbers[i];

  //     numbers[i] = numbers[i + 1];
  //     numbers[i + 1] = temp;
  //   }
  // }

  // stdout.write(numbers);

  // Solution 3
  // numbers.add(elementToInsert);
  // for (var i = index; i < numbers.length - 1; i++) {
  //   int leftIndex = index; // as we always move first element
  //   int rightIndex = i + 1;

  //   int temp = numbers[leftIndex];

  //   numbers[leftIndex] = numbers[rightIndex];
  //   numbers[rightIndex] = temp;
  // }

  // stdout.write(numbers);
}
