// https://informatics.msk.ru/mod/statements/view.php?id=270#1

import 'dart:convert';
import 'dart:io';

void main() {
  int wantedElement = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int sameNumberCounter = 0;

  //1
  for (var number in numbers) {
    if (wantedElement == number) {
      sameNumberCounter++;
    }
  }

  // 2
  // for (var i = 0; i < numbers.length; i++) {
  //   if (wantedElement == numbers[i]) {
  //     sameNumberCounter++;
  //   }
  // }

  stdout.write(sameNumberCounter);
}
