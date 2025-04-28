// https://www.codewars.com/kata/5282b48bb70058e4c4000fa7/train/dart
//
// When working with color values it can sometimes be useful to extract the individual
// red, green, and blue (RGB) component values for a color. Implement a function that meets these requirements:
//
//     Accepts a case-insensitive hexadecimal color string as its parameter (ex. "#FF9933" or "#ff9933")
//     Returns a Map<String, int> with the structure {r: 255, g: 153, b: 51} where r, g, and b range from 0 through 255
//
// Note: your implementation does not need to support the shorthand form of hexadecimal notation (ie "#FFF")

import 'dart:convert';
import 'dart:io';

void main() {
  String hexColor = stdin.readLineSync(encoding: utf8)!;

  stdout.write(hexToRGB(hexColor));
}

Map<String, int> hexToRGB(String hex) {
  final colorValues = hex.replaceFirst('#', '');

  const rgbKeys = ['r', 'g', 'b'];
  final rgbValues = [for (var i = 0; i < colorValues.length; i += 2) int.parse(colorValues.substring(i, i + 2), radix: 16)];

  final parsedHexToRGB = Map.fromIterables(rgbKeys, rgbValues);

  return parsedHexToRGB;
}
