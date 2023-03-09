// https://informatics.msk.ru/mod/statements/view.php?id=270&chapterid=1409#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> droids = elements.map(int.parse).toList();

  int minNumber;
  int previousMinNumber;

  if (droids[0] < droids[1]) {
    minNumber = droids[0];
    previousMinNumber = droids[1];
  } else {
    minNumber = droids[1];
    previousMinNumber = droids[0];
  }

  for (var i = 2; i < totalElementsQuantity; i++) {
    if (minNumber > droids[i]) {
      previousMinNumber = minNumber;
      minNumber = droids[i];
    } else if (previousMinNumber > droids[i]) {
      previousMinNumber = droids[i];
    }
  }

  stdout.write('$minNumber $previousMinNumber');
}
