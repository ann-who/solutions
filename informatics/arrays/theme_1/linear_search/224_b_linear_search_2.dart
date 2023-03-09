// https://informatics.msk.ru/mod/statements/view.php?id=270&chapterid=224#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  int wantedElement = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<int> numbers = elements.map(int.parse).toList();

  int sameNumberCounter = 0;
  int middleIndex = totalElementsQuantity ~/ 2;

  // 1
  for (var i = 0; i <= middleIndex; i++) {
    if (wantedElement == numbers[i] ||
        wantedElement == numbers[middleIndex + i]) {
      sameNumberCounter++;
      stdout.write('YES');
      break;
    }
  }
  if (sameNumberCounter == 0) stdout.write('NO');

  // //2
  // List<int> leftPart = numbers.getRange(0, middleIndex).toList();
  // List<int> rightPart =
  //     numbers.getRange(middleIndex, totalElementsQuantity).toList();

  // stdout.write(leftPart);
  // stdout.write(rightPart);

  // for (var i = 0; i <= middleIndex; i++) {
  //   if (wantedElement == leftPart[i] || wantedElement == rightPart[i]) {
  //     sameNumberCounter++;
  //     stdout.write('YES');
  //     break;
  //   }
  // }

  // if (sameNumberCounter == 0) stdout.write('NO');
}
