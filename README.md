# color_shade

![Pub dev](https://img.shields.io/pub/v/color_shade)
![Coverage Status](https://img.shields.io/badge/coverage-100%25-green)

## Overview

A package that extends the Color class to generate shades from the primary color.

## Usage
To use it, just import the package and the shades will already be available

```dart
import 'package:color_shade/color_shade.dart';

Color(0xFFFFEB3B).shade700;
```
It is possible to access tones from 50 to 900, the same as the `Colors.yellow` of the material, for example

```dart
  const primaryColor = Color(0xFFFFEB3B);
  primaryColor.shade50;
  primaryColor.shade100;
  primaryColor.shade200;
  primaryColor.shade300;
  primaryColor.shade400;
  primaryColor.shade500;
  primaryColor.shade600;
  primaryColor.shade700;
  primaryColor.shade800;
  primaryColor.shade900;
```
It is possible also pass the `Color(0xFFFFEB3B).swatch` to the `ThemeData`

```dart
MaterialApp(
  title: 'ColorShade Demo',
  theme: ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFFFFEB3B).swatch,
  ),
  darkTheme: ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFFFFEB3B).swatch,
  ),
  themeMode: ThemeMode.system,
  home: HomePage(),
)
```