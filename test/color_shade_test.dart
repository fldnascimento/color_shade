import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:color_shade/color_shade.dart';

void main() {
  test('should return shade50 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    const yellowShade50 = Color(0xFFFFFCE7);
    expect(yellow.shade50, yellowShade50);
  });

  test('should return shade100 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    const yellowShade100 = Color(0xFFFFF9C4);
    expect(yellow.shade100, yellowShade100);
  });

  test('should return shade200 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    const yellowShade200 = Color(0xFFFFF59D);
    expect(yellow.shade200, yellowShade200);
  });

  test('should return shade300 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    const yellowShade300 = Color(0xFFFFF175);
    expect(yellow.shade300, yellowShade300);
  });

  test('should return shade400 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    const yellowShade400 = Color(0xFFFFEE58);
    expect(yellow.shade400, yellowShade400);
  });

  test('should return shade500 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    expect(yellow.shade500, yellow);
  });

  test('should return shade600 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    const yellowShade600 = Color(0xFFFFE835);
    expect(yellow.shade600, yellowShade600);
  });

  test('should return shade700 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    const yellowShade700 = Color(0xFFFFE52D);
    expect(yellow.shade700, yellowShade700);
  });

  test('should return shade800 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    const yellowShade800 = Color(0xFFFFE225);
    expect(yellow.shade800, yellowShade800);
  });

  test('should return shade900 for color yellow', () {
    const yellow = Color(0xFFFFEB3B);
    const yellowShade900 = Color(0xFFFFDC18);
    expect(yellow.shade900, yellowShade900);
  });
}
