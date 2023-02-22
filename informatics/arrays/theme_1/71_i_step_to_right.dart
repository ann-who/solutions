// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=71#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');

  /// Solution 1

  // for (var i = totalElementsQuantity - 1; i > 0; i--) {
  //   if (i == totalElementsQuantity - 1) {
  //     elements.insert(0, elements[i]);
  //     elements.removeLast();
  //     break;
  //   }
  // }

  /// Solution 2

  for (var i = totalElementsQuantity - 1; i > 0; i--) {
    var temp = elements[i];
    elements[i] = elements[i - 1];
    elements[i - 1] = temp;
  }

  stdout.write(elements);
}
