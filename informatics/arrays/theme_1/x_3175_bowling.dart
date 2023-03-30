// https://informatics.msk.ru/mod/statements/view.php?id=2741&chapterid=3175#1

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> elements = stdin.readLineSync(encoding: utf8)!.split(' ');
  List<int> pinsAndGoes = elements.map(int.parse).toList();

  List<List<int>> fallenPinsNumbers = [];

  for (var i = 0; i < pinsAndGoes[1]; i++) {
    List<String> elements1 = stdin.readLineSync(encoding: utf8)!.split(' ');
    List<int> pinsNumbers = elements1.map(int.parse).toList();
    fallenPinsNumbers.add(pinsNumbers);
  }

  List<bool> pins = [for (var i = 0; i < pinsAndGoes[0]; i++) true];

  for (var go = 0; go < pinsAndGoes[1]; go++) {
    for (var fallenPin = 0;
        fallenPin < fallenPinsNumbers[go].length;
        fallenPin++) {
      for (var i = 0; i < pins.length; i++) {
        if (i == fallenPinsNumbers[go][fallenPin] - 1) {
          for (var pinToDrop = i;
              pinToDrop < fallenPinsNumbers[go][1];
              pinToDrop++) {
            pins[pinToDrop] = false;
          }
        }
      }
    }
  }

  for (var pin in pins) {
    if (pin == true) {
      stdout.write('I');
    } else {
      stdout.write('.');
    }
  }
}
