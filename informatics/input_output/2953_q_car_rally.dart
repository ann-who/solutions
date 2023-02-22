// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2953#1

import 'dart:convert';
import 'dart:io';

void main() {
  int kmPerDay = int.parse(stdin.readLineSync(encoding: utf8)!);
  int kmTotalWay = int.parse(stdin.readLineSync(encoding: utf8)!);

  int daysForTotalWay = (kmTotalWay + kmPerDay - 1) ~/ kmPerDay;

  stdout.write(daysForTotalWay);
}
