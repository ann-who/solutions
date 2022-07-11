// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2955#1

import 'dart:convert';
import 'dart:io';

void main() {
  int poleHeight = int.parse(stdin.readLineSync(encoding: utf8)!);
  int daySpeed = int.parse(stdin.readLineSync(encoding: utf8)!);
  int nightSpeed = int.parse(stdin.readLineSync(encoding: utf8)!);

  const int firstDay = 1;

  int totalSpeed = daySpeed - nightSpeed;
  int restWay = poleHeight - nightSpeed - 1;

  int dayPoleTop = firstDay + restWay ~/ totalSpeed;

  stdout.write(dayPoleTop);
}
