// https://informatics.msk.ru/mod/statements/view.php?id=270&chapterid=1412#1

import 'dart:convert';
import 'dart:io';

void main() {
  int wantedElement = int.parse(stdin.readLineSync(encoding: utf8)!);
  int tableSize = int.parse(stdin.readLineSync(encoding: utf8)!);

  List<List<int>> table = [];
  bool elementInTable = false;
  var columnIndex = 0;

  for (var i = 0; i < tableSize; i++) {
    List<String> tableContent =
        (stdin.readLineSync(encoding: utf8)!).split(' ');
    List<int> tableNumbers = tableContent.map(int.parse).toList();
    table.add(tableNumbers);
  }

  for (var i = 0; i < tableSize; i++) {
    for (var i = 0; i < table[columnIndex].length; i++) {
      if (table[i][columnIndex] == wantedElement) {
        elementInTable = true;
        break;
      }
    }
    if (elementInTable) {
      stdout.write('YES\n');
    } else {
      stdout.write('NO\n');
    }

    columnIndex++;
    elementInTable = false;
  }
}
