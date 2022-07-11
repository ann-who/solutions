// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=262#1

import 'dart:convert';
import 'dart:io';

void main() {
  int goodPriceRubles = int.parse(stdin.readLineSync(encoding: utf8)!);
  int goodPriceKopecks = int.parse(stdin.readLineSync(encoding: utf8)!);
  int givenRubles = int.parse(stdin.readLineSync(encoding: utf8)!);
  int givenKopecks = int.parse(stdin.readLineSync(encoding: utf8)!);

  const int kopeckInRuble = 100;

  int costInKopecks = goodPriceRubles * kopeckInRuble + goodPriceKopecks;
  int givenMoneyInKopecks = givenRubles * kopeckInRuble + givenKopecks;

  int changeInKopecks = givenMoneyInKopecks - costInKopecks;

  int changeRubles = changeInKopecks ~/ kopeckInRuble;
  int changeKopecks = changeInKopecks % kopeckInRuble;

  stdout.write('$changeRubles $changeKopecks');
}
