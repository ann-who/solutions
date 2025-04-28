// https://www.codewars.com/kata/515decfd9dcfc23bb6000006/train/dart
//
// Write an algorithm that will identify valid IPv4 addresses in dot-decimal format.
// IPs should be considered valid if they consist of four octets, with values between 0 and 255, inclusive.
//
// Examples of valid inputs:
// 1.2.3.4
// 123.45.67.89

import 'dart:convert';
import 'dart:io';

void main() {
  String inputElement = stdin.readLineSync(encoding: utf8)!;

  stdout.write(isValidIP(inputElement));
}

bool isValidIP(String input) {
  final inputParts = input.split('.');
  if (inputParts.length != 4) return false;

  for (var part in inputParts) {
    if (part.startsWith(' ') || part.endsWith(' ') || (part.length > 1 && part.startsWith('0'))) return false;
    final num = int.tryParse(part);
    if (num == null || num < 0 || num > 255) return false;
  }

  return true;
}
