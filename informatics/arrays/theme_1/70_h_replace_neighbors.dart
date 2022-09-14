// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=70#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> integers = elements.map(int.parse).toList();

  for (var i = 0; i < totalElementsQuantity - 1; i = 2 + i) {
    var temp = integers[i];
    integers[i] = integers[i + 1];
    integers[i + 1] = temp;
  }

  stdout.write(integers);

  assert(totalElementsQuantity == 6);
  assert(integers == [2, 1, 5, 8, 7, 6]);
}
