// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=365#1

// Заполнение спиралью

// Дано число n. Создайте массив A[2*n+1][2*n+1] и заполните его по спирали,
// начиная с числа 0 в центральной клетке A[n+1][n+1].
// Спираль выходит вверх, далее закручивается против часовой стрелки.

// Входные данные
// Программа получает на вход одно число n.

// Выходные данные
// Программа должна вывести  полученный массив, отводя на вывод каждого числа ровно 3 символа.

import 'dart:convert';
import 'dart:io';

void main() {
  int givenNumber = int.parse(stdin.readLineSync(encoding: utf8)!);

  int rowsQuantity = givenNumber * 2 + 1;
  int columnsQuantity = rowsQuantity;

  // Create a matrix based on given numbers
  List<List<int>> matrix = List.generate(
    rowsQuantity,
    (row) => List.filled(columnsQuantity, 0, growable: false),
    growable: false,
  );

  // Middle indexes
  int x = givenNumber;
  int y = givenNumber;

  int fillLineLength = 1;
  int newNumber = 0;

  // Fill matrix
  for (var i = 0; i <= givenNumber; i++) {
    if (x == givenNumber && y == givenNumber) {
      matrix[x][y] = newNumber;
      newNumber++;
      fillLineLength++;
      x--;
      continue;
    }

    for (var i = 0; i < fillLineLength; i++, y--) {
      matrix[x][y] = newNumber;
      newNumber++;
    }

    y++;
    x++;

    for (var i = 0; i < fillLineLength; i++, x++) {
      matrix[x][y] = newNumber;
      newNumber++;
    }

    y++;
    x--;

    for (var i = 0; i < fillLineLength; i++, y++) {
      matrix[x][y] = newNumber;
      newNumber++;
    }

    y--;
    x--;

    for (var i = 0; i < fillLineLength; i++, x--) {
      matrix[x][y] = newNumber;
      newNumber++;
    }

    fillLineLength += 2;
  }

  int maxNumber = (rowsQuantity * columnsQuantity - 1).toString().length + 1;

  // Print spiral filled matrix
  for (var r = 0; r < rowsQuantity; r++) {
    for (var c = 0; c < columnsQuantity; c++) {
      stdout.write('${matrix[r][c]}'.padRight(maxNumber, ' '));
    }
    stdout.write('\n');
  }
}
