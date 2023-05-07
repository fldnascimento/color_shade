import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:color_shade/color_shade.dart';

void main() {
  test('should return shade50 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade50, Colors.yellow.shade50);
  });

  test('should return shade100 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade100, Colors.yellow.shade100);
  });

  test('should return shade200 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade200, Colors.yellow.shade200);
  });

  test('should return shade300 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade300, Colors.yellow.shade300);
  });

  test('should return shade400 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade400, Colors.yellow.shade400);
  });

  test('should return shade500 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade500, Colors.yellow.shade500);
  });

  test('should return shade600 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade600, Colors.yellow.shade600);
  });

  test('should return shade700 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade700, Colors.yellow.shade700);
  });

  test('should return shade800 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade800, Colors.yellow.shade800);
  });

  test('should return shade900 equal to material color yellow', () {
    final yellow = Color(Colors.yellow.value);
    expect(yellow.shade900, Colors.yellow.shade900);
  });
}
