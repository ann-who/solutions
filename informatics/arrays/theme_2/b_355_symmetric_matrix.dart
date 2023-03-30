// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=355#1

// matrix creation from single List<int>

// var matrix = [
// for (var row = 0; row < tableSize; row++)
//   [
//     for (var column = 0; column < tableSize; column++)
//       numbers[row + column * tableSize]
//   ],
// ];

import 'dart:convert';
import 'dart:io';

void main() {
  int tableSize = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements;
  List<int> numbers;
  List<List<int>> matrix = [];

  for (var i = 0; i < tableSize; i++) {
    elements = stdin.readLineSync(encoding: utf8)!.split(' ');
    numbers = elements.map(int.parse).toList();
    matrix.add(numbers);
  }

  bool isSymmetric = true;

  for (var x = 0; x < tableSize; x++) {
    for (var y = 0; y < tableSize; y++) {
      if (matrix[x][y] != matrix[y][x]) {
        isSymmetric = false;
      }
    }
  }

  if (isSymmetric == true) {
    stdout.write('yes');
  } else {
    stdout.write('no');
  }
}
