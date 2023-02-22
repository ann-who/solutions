// https://informatics.msk.ru/mod/statements/view.php?id=280&chapterid=347#1

import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  int secondsInWork = int.parse(stdin.readLineSync(encoding: utf8)!);

  List<int> sequence = [0];
  int elementInSequence = 1;

  if (sequence.length >= secondsInWork) {
    stdout.write(elementInSequence);
  } else {
    for (var i = 0; i < secondsInWork; i++) {
      sequence.add(elementInSequence);
      stdout.write('$elementInSequence ');
      elementInSequence += 1;
    }
  }
}
