// https://informatics.msk.ru/mod/statements/view.php?id=282&chapterid=1464#1

// Спираль

// Требуется заполнить массив размера N × N единичками по спирали
// (начиная с верхнего левого угла по часовой стрелке, см. пример).

// Входные данные
// С клавиатуры вводится число N (нечетное, натуральное и не превышающее 50).

// Выходные данные
// Требуется вывести на экран построенную спираль.

import 'dart:convert';
import 'dart:io';

void main() {
  int matrixSize = int.parse(stdin.readLineSync(encoding: utf8)!);

  // Create matrix "template"
  List<List<int>> matrix = List.generate(
    matrixSize,
    (row) => List.filled(matrixSize, 0, growable: false),
    growable: false,
  );

  // Fill "outer" borders

  int column = 0;

  for (var i = 0; i < matrixSize; i++) {
    matrix[0][i] = 1;
    matrix[matrixSize - 1][i] = 1;
    matrix[i][matrixSize - 1] = 1;
  }

  if (column == 0) {
    for (var i = matrixSize - 1; i >= 2; i--) {
      matrix[i][column] = 1;
    }
  }

  // Fill inner rows
  int lineMaxSize = matrixSize - 2;
  for (var row = 2; row < matrixSize; row += 2, column += 2, lineMaxSize -= 2) {
    for (var i = column; i < lineMaxSize; i++) {
      matrix[row][i] = 1;
    }
  }

  lineMaxSize = 0;
  column = matrixSize - 2;
  for (var row = matrixSize - 1;
      row >= 2;
      row -= 2, column -= 2, lineMaxSize += 2) {
    for (var i = column; i > lineMaxSize; i--) {
      matrix[row][i] = 1;
    }
  }

  // Fill inner columns
  lineMaxSize = matrixSize - 2;
  column = matrixSize - 3;
  int initialRow = 2;
  for (var i = column; i > 2; i -= 2, lineMaxSize -= 2, initialRow += 2) {
    for (var row = initialRow; row < lineMaxSize; row++) {
      matrix[row][i] = 1;
    }
  }

  lineMaxSize = 3;
  column = 2;
  initialRow = matrixSize - 3;
  for (var i = column;
      i < matrixSize;
      i += 2, lineMaxSize += 2, initialRow -= 2) {
    for (var row = initialRow; row > lineMaxSize; row--) {
      matrix[row][i] = 1;
    }
  }

  // Print matrix filled in spiral order
  for (var row = 0; row < matrixSize; row++) {
    for (var column = 0; column < matrixSize; column++) {
      stdout.write('${matrix[row][column]} ');
    }
    stdout.write('\n');
  }
}
