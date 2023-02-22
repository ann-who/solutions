// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=64#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> integers = elements.map(int.parse).toList();

  /// Solution 1
  // for (var element in integers) {
  //   if (element % 2 != 0) {
  //     continue;
  //   }
  //   stdout.write('$element ');
  // }

  /// Solution 2
  for (var i = 0; i < totalElementsQuantity; i++) {
    if (integers[i] % 2 != 0) {
      continue;
    }
    stdout.write('${integers[i]} ');
  }
}
