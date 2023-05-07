import 'package:flutter/material.dart';

abstract class Shade {
  static String hexFromArgb(int a, int r, int g, int b) {
    return '${a.toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${r.toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${g.toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${b.toRadixString(16).padLeft(2, '0').toUpperCase()}';
  }

  static int intFromHex(String hex) {
    return int.tryParse(hex, radix: 16) ?? 0;
  }

  static Color mixColors(Color argb1, Color argb2, double amount) {
    final p = amount / 100;

    final r = ((argb2.red - argb1.red) * p + argb1.red).floor();
    final g = ((argb2.green - argb1.green) * p + argb1.green).floor();
    final b = ((argb2.blue - argb1.blue) * p + argb1.blue).floor();
    final a = ((argb2.alpha - argb1.alpha) * p + argb1.alpha).floor();

    final hex = hexFromArgb(a, r, g, b);
    return Color(intFromHex(hex));
  }

  // $scope.multiply = function(rgb1, rgb2){
  // 	rgb1.b = Math.floor(rgb1.b * rgb2.b / 255);
  // 	rgb1.g = Math.floor(rgb1.g * rgb2.g / 255);
  // 	rgb1.r = Math.floor(rgb1.r * rgb2.r / 255);
  // 	return tinycolor('rgb ' + rgb1.r + ' ' + rgb1.g + ' ' + rgb1.b);
  // };

// Expected: Color:<Color(0xfffdd835)>
//   Actual: Color:<Color(0xffffe935)>

  static Color multiply(Color argb1, Color argb2) {
    final a = argb1.alpha;
    final r = (argb1.red * argb2.red / 255).floor();
    final g = (argb1.green * argb2.green / 255).floor();
    final b = (argb1.blue * argb2.blue / 255).floor();

    final hex = hexFromArgb(a, r, g, b);
    return Color(intFromHex(hex));
  }

  static MaterialColor shades(Color colorBase) {
    const baseLight = Color(0xFFFFFFFF);
    final baseDark = multiply(colorBase, colorBase);

    return MaterialColor(
      colorBase.value,
      <int, Color>{
        50: mixColors(baseLight, colorBase, 12),
        100: mixColors(baseLight, colorBase, 30),
        200: mixColors(baseLight, colorBase, 50),
        300: mixColors(baseLight, colorBase, 70),
        400: mixColors(baseLight, colorBase, 85),
        500: colorBase,
        600: mixColors(baseDark, colorBase, 87),
        700: mixColors(baseDark, colorBase, 70),
        800: mixColors(baseDark, colorBase, 54),
        900: mixColors(baseDark, colorBase, 25),
      },
    );
  }
}

extension ColorShadeExtension on Color {
  MaterialColor get shades {
    return Shade.shades(this);
  }

  Color get shade50 => shades[50]!;
  Color get shade100 => shades[100]!;
  Color get shade200 => shades[200]!;
  Color get shade300 => shades[300]!;
  Color get shade400 => shades[400]!;
  Color get shade500 => shades[500]!;
  Color get shade600 => shades[600]!;
  Color get shade700 => shades[700]!;
  Color get shade800 => shades[800]!;
  Color get shade900 => shades[900]!;
}
