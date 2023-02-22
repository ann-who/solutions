// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=343#1

import 'dart:convert';
import 'dart:io';

void main() {
  int numbersQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements =
      stdin.readLineSync(encoding: utf8)!.split(' ').toList();
  List<int> numbersToSum = elements.map(int.parse).toList();

  int sum = numbersToSum[0];

  for (var i = 1; i < numbersQuantity; i++) {
    sum += numbersToSum[i];
  }

  stdout.write(sum);
}
