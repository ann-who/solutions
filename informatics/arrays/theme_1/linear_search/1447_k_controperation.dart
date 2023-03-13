// https://informatics.msk.ru/mod/statements/view.php?id=270&chapterid=1447#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> marks = elements.map(int.parse).toList();

  int maxMark = marks[1];
  int minMark = marks[1];

  for (var i = 2; i < marks.length; i++) {
    if (maxMark < marks[i]) {
      maxMark = marks[i];
    } else if (minMark > marks[i]) {
      minMark = marks[i];
    }
  }

  for (var i = 1; i < marks.length; i++) {
    if (marks[i] == maxMark) {
      marks[i] = minMark;
    }
    stdout.write('${marks[i]} ');
  }
}
