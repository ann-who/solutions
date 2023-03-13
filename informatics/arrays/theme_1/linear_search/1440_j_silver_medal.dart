// https://informatics.msk.ru/mod/statements/view.php?id=270&chapterid=1440#1

import 'dart:convert';
import 'dart:io';

void main() {
  int sportsmenQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);
  List<String> elements = (stdin.readLineSync(encoding: utf8)!).split(' ');
  List<int> points = elements.map(int.parse).toList();

  // solution 1
  // int goldenMedalPoints = points[0];

  // for (var i = 1; i < sportsmenQuantity; i++) {
  //   if (points[i] > goldenMedalPoints) {
  //     goldenMedalPoints = points[i];
  //   }
  // }

  // points.removeWhere((element) => element == goldenMedalPoints);

  // int silverMedalPoints = points[0];

  // for (var i = 1; i < points.length; i++) {
  //   if (points[i] > silverMedalPoints) {
  //     silverMedalPoints = points[i];
  //   }
  // }

  // stdout.write(silverMedalPoints);

  // solution 2
  int goldenMedalPoints = points[0];
  int silverMedalPoints = points[1];

  for (var i = 1; i < sportsmenQuantity; i++) {
    if (points[i] > goldenMedalPoints) {
      silverMedalPoints = goldenMedalPoints;
      goldenMedalPoints = points[i];
    } else if (points[i] > silverMedalPoints &&
        points[i] != goldenMedalPoints) {
      silverMedalPoints = points[i];
    }
  }

  stdout.write(silverMedalPoints);
}
