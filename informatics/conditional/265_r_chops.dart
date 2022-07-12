// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=265#1

import 'dart:convert';
import 'dart:io';

void main() {
  int chopsPerPan = int.parse(stdin.readLineSync(encoding: utf8)!);
  int minutesFryOneSide = int.parse(stdin.readLineSync(encoding: utf8)!);
  int chopsWanted = int.parse(stdin.readLineSync(encoding: utf8)!);

  // int pansNeeded = (chopsWanted / chopsPerPan).ceil();
  // int minutesFryGeneral = minutesFryOneSide * 2 * pansNeeded;

  // stdout.write(minutesFryGeneral);

  if (chopsWanted % chopsPerPan == 0) {
    int minutesFryGeneral =
        minutesFryOneSide * 2 * (chopsWanted ~/ chopsPerPan);
    stdout.write(minutesFryGeneral);
  } else {
    int chopsCanFry = chopsWanted ~/ chopsPerPan;
    int chopsLeft = chopsWanted % chopsPerPan;
    int pansNeeded = chopsCanFry + chopsLeft;
    int minutesFryGeneral = minutesFryOneSide * 2 * pansNeeded;
    stdout.write(minutesFryGeneral);
  }
}
