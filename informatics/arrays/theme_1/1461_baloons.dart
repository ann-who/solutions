// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=1461#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> numbers = elements.map(int.parse).toList();

  int baloonsQuantity = numbers[0];
  List<int> baloonsColors = numbers.getRange(1, numbers.length).toList();

  int sameColorCounter = 1;
  int deletedBaloonsCounter = 0;

  for (var i = 0; i < baloonsQuantity - 1; i++) {
    if (baloonsColors[i] == baloonsColors[i + 1]) {
      sameColorCounter++;
    } else if (baloonsColors[i] != baloonsColors[i + 1] &&
        sameColorCounter >= 3) {
      deletedBaloonsCounter += sameColorCounter;
      baloonsColors.removeRange(i + 1 - sameColorCounter, i + 1);
      sameColorCounter = 1;
      i = -1;
      baloonsQuantity = baloonsColors.length;
    } else {
      sameColorCounter = 1;
    }
  }

  if (sameColorCounter >= 3) {
    deletedBaloonsCounter += sameColorCounter;
  }

  if (deletedBaloonsCounter != 0) {
    stdout.write(deletedBaloonsCounter);
  }
}
