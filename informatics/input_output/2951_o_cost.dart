// https://informatics.msk.ru/mod/statements/view.php?id=2296&chapterid=2951#1

import 'dart:convert';
import 'dart:io';

void main() {
  int rublesCost = int.parse(stdin.readLineSync(encoding: utf8)!);
  int kopeckCost = int.parse(stdin.readLineSync(encoding: utf8)!);
  int piesQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  const int kopeckInRuble = 100;

  int kopeckForPie = rublesCost * kopeckInRuble + kopeckCost;
  int costInKopeck = piesQuantity * kopeckForPie;

  int rublesTotalCost = costInKopeck ~/ kopeckInRuble;
  int kopeckTotalCost = costInKopeck % kopeckInRuble;

  stdout.write('$rublesTotalCost $kopeckTotalCost');
}
