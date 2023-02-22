// https://informatics.msk.ru/mod/statements/view.php?id=249&chapterid=3082#1

import 'dart:convert';
import 'dart:io';

void main() {
  int vFirstVessel = int.parse(stdin.readLineSync(encoding: utf8)!);
  int vSecondVessel = int.parse(stdin.readLineSync(encoding: utf8)!);
  int wantedV = int.parse(stdin.readLineSync(encoding: utf8)!);

  const String fillFirstVessel = '>A\n';
  const String fillSecondVessel = '>B\n';
  const String pourOutFirstVessel = 'A>\n';
  const String pourOutSecondVessel = 'B>\n';
  const String pourOverFirstToSecond = 'A>B\n';
  const String pourOverSecondToFirst = 'B>A\n';

  if (wantedV == vFirstVessel) {
    stdout.write(fillFirstVessel);
  } else if (wantedV == vSecondVessel) {
    stdout.write(fillSecondVessel);
  } else if (wantedV > vFirstVessel || wantedV > vSecondVessel) {
    stdout.write('Impossible');
  } else {
    while (wantedV != vFirstVessel || wantedV != vSecondVessel) {}
  }
}
