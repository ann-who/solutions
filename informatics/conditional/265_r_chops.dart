// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=265#1

import 'dart:convert';
import 'dart:io';

void main() {
  int chopsPerPan = int.parse(stdin.readLineSync(encoding: utf8)!);
  int minutesFryOneSide = int.parse(stdin.readLineSync(encoding: utf8)!);
  int chopsWanted = int.parse(stdin.readLineSync(encoding: utf8)!);

  // Можно решить без if
  // int pansNeeded = (chopsWanted / chopsPerPan).ceil();
  // int minutesFryGeneral = minutesFryOneSide * 2 * pansNeeded;

  int minutesFryOneChop = minutesFryOneSide * 2;
  int pansNeeded;

  if (chopsWanted % chopsPerPan == 0) {
    pansNeeded = chopsWanted ~/ chopsPerPan;
  } else {
    int chopsCanFry = chopsWanted ~/ chopsPerPan;
    int chopsLeft = chopsWanted % chopsPerPan;
    pansNeeded = chopsCanFry + chopsLeft;
  }

  int minutesFryGeneral = minutesFryOneChop * pansNeeded;
  stdout.write(minutesFryGeneral);
}
