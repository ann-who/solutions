// https://informatics.msk.ru/mod/statements/view.php?id=270&chapterid=1427#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> matrixSize =
      elements.map(int.parse).toList(); // rows & columns quantity

  List<List<int>> matrix = [];
  int columnIndex = 0;
  int wantedPointCounter = 0;

  // filling the matrix
  for (var i = 0; i < matrixSize[0]; i++) {
    List<String> tableContent =
        (stdin.readLineSync(encoding: utf8)!).split(' ');
    List<int> tableNumbers = tableContent.map(int.parse).toList();
    matrix.add(tableNumbers);
  }

  int wantedPoint = matrix[0][0];
  for (var rowElement = 0; rowElement < matrixSize[1]; rowElement++) {
    for (var columnElement = 0;
        columnElement < matrixSize[0];
        columnElement++) {
      if (wantedPoint >= matrix[columnElement][columnIndex] &&
          wantedPoint <= matrix[columnIndex][rowElement]) {
        wantedPointCounter++;
      }
    }

    columnIndex++;
    wantedPoint = matrix[0][0];
  }

  stdout.write(wantedPointCounter);
}
