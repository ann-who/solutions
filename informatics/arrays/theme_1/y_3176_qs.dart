// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3176#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = [];
  List<int> position = [];

  int size = 8;
  List<int> x = [];
  List<int> y = [];
  bool canCross = false;

  for (var i = 0; i < size; i++) {
    elements = stdin.readLineSync(encoding: utf8)!.split(' ');
    position = elements.map(int.parse).toList();
    x.add(position[0]);
    y.add(position[1]);
  }

  for (var i = 0; i < size; i++) {
    for (var j = i + 1; j < size; j++) {
      bool canCrossHorizontal = x[i] == x[j];
      bool canCrossVertical = y[i] == y[j];
      bool canCrossDiagonal = (x[i] - x[j]).abs() == (y[i] - y[j]).abs();

      if (canCrossHorizontal || canCrossVertical || canCrossDiagonal) {
        canCross = true;
      }
    }
  }

  if (canCross == true) {
    stdout.write('YES');
  } else {
    stdout.write('NO');
  }
}
