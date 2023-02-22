// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2940#1

import 'dart:convert';
import 'dart:io';

void main() {
  int speed = int.parse(stdin.readLineSync(encoding: utf8)!);
  int time = int.parse(stdin.readLineSync(encoding: utf8)!);

  final int mkad = 109;

  int passedKm = speed * time;
  int mark = (mkad + passedKm) % mkad;

  stdout.write(mark);
}
