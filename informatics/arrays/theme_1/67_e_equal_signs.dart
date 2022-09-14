// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=67#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> integers = elements.map(int.parse).toList();
  bool coupleExists = false;

  for (var i = 1; i < totalElementsQuantity; i++) {
    if (integers[i] > 0 && integers[i - 1] > 0 ||
        integers[i] < 0 && integers[i - 1] < 0) {
      coupleExists = true;
    }
  }

  if (coupleExists == true) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
