// https://informatics.msk.ru/mod/statements/view.php?id=249&chapterid=3063#1

import 'dart:convert';
import 'dart:io';

void main() {
  int initialDeposit = int.parse(stdin.readLineSync(encoding: utf8)!);
  int percents = int.parse(stdin.readLineSync(encoding: utf8)!);
  int wantedDeposit = int.parse(stdin.readLineSync(encoding: utf8)!);

  int depositYears = 1;
  int moneyNextYear = initialDeposit + percents;
  int moneyIncreasing = moneyNextYear ~/ percents;

  while (moneyNextYear < wantedDeposit) {
    moneyNextYear += moneyIncreasing;
    ++depositYears;
    moneyIncreasing = moneyNextYear ~/ percents;
  }
  stdout.write(depositYears);
}
