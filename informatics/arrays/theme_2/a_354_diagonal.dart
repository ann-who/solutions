// hhttps://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=354#1

import 'dart:convert';
import 'dart:io';

void main() {
  int tableSize = int.parse(stdin.readLineSync(encoding: utf8)!);

  int diagonalStartInd = tableSize - 1;

  for (var column = 0; column < tableSize; column++) {
    for (var row = 0; row < tableSize; row++) {
      if (row < diagonalStartInd) {
        stdout.write('0 ');
      } else if (row == diagonalStartInd) {
        stdout.write('1 ');
      } else {
        stdout.write('2 ');
      }
    }
    stdout.write('\n');
    diagonalStartInd--;
  }
}
