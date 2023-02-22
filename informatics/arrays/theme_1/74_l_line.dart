// https://informatics.msk.ru/mod/statements/view.php?id=208&chapterid=1456#1

import 'dart:convert';
import 'dart:io';

void main() {
  int totalElementsQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> allStudentsHeight = elements.map(int.parse).toList();
  int newStudentHeight = int.parse(stdin.readLineSync(encoding: utf8)!);
  int positionInLine = 0;

  while (positionInLine < totalElementsQuantity &&
      newStudentHeight <= allStudentsHeight[positionInLine]) {
    ++positionInLine; // index
  }
  stdout.write(positionInLine + 1); // correct position
}
