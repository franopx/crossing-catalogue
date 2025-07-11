import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff725c0c),
      surfaceTint: Color(0xff725c0c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffe088),
      onPrimaryContainer: Color(0xff574500),
      secondary: Color(0xff0b6b59),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa1f2db),
      onSecondaryContainer: Color(0xff005142),
      tertiary: Color(0xff8f4c38),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdbd1),
      onTertiaryContainer: Color(0xff723523),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f0),
      onSurface: Color(0xff1f1b13),
      onSurfaceVariant: Color(0xff4c4639),
      outline: Color(0xff7d7667),
      outlineVariant: Color(0xffcfc6b4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff343027),
      inversePrimary: Color(0xffe2c46d),
      primaryFixed: Color(0xffffe088),
      onPrimaryFixed: Color(0xff241a00),
      primaryFixedDim: Color(0xffe2c46d),
      onPrimaryFixedVariant: Color(0xff574500),
      secondaryFixed: Color(0xffa1f2db),
      onSecondaryFixed: Color(0xff002019),
      secondaryFixedDim: Color(0xff85d6c0),
      onSecondaryFixedVariant: Color(0xff005142),
      tertiaryFixed: Color(0xffffdbd1),
      onTertiaryFixed: Color(0xff3a0b01),
      tertiaryFixedDim: Color(0xffffb5a0),
      onTertiaryFixedVariant: Color(0xff723523),
      surfaceDim: Color(0xffe1d9cc),
      surfaceBright: Color(0xfffff8f0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf3e5),
      surfaceContainer: Color(0xfff5eddf),
      surfaceContainerHigh: Color(0xffefe7d9),
      surfaceContainerHighest: Color(0xffeae2d4),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff433400),
      surfaceTint: Color(0xff725c0c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff826b1c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003e33),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff257a67),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5d2514),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa15a45),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f0),
      onSurface: Color(0xff141109),
      onSurfaceVariant: Color(0xff3b3629),
      outline: Color(0xff585244),
      outlineVariant: Color(0xff736c5e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff343027),
      inversePrimary: Color(0xffe2c46d),
      primaryFixed: Color(0xff826b1c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff685201),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff257a67),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff006050),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa15a45),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff84422f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcdc6b9),
      surfaceBright: Color(0xfffff8f0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffbf3e5),
      surfaceContainer: Color(0xffefe7d9),
      surfaceContainerHigh: Color(0xffe4dcce),
      surfaceContainerHighest: Color(0xffd8d1c3),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff372b00),
      surfaceTint: Color(0xff725c0c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5a4700),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003329),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff005345),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff501b0b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff753725),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f0),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff302c20),
      outlineVariant: Color(0xff4e493b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff343027),
      inversePrimary: Color(0xffe2c46d),
      primaryFixed: Color(0xff5a4700),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3f3100),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff005345),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003a2f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff753725),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff592111),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbfb8ab),
      surfaceBright: Color(0xfffff8f0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff8f0e2),
      surfaceContainer: Color(0xffeae2d4),
      surfaceContainerHigh: Color(0xffdbd3c6),
      surfaceContainerHighest: Color(0xffcdc6b9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe2c46d),
      surfaceTint: Color(0xffe2c46d),
      onPrimary: Color(0xff3c2f00),
      primaryContainer: Color(0xff574500),
      onPrimaryContainer: Color(0xffffe088),
      secondary: Color(0xff85d6c0),
      onSecondary: Color(0xff00382d),
      secondaryContainer: Color(0xff005142),
      onSecondaryContainer: Color(0xffa1f2db),
      tertiary: Color(0xffffb5a0),
      onTertiary: Color(0xff561f0f),
      tertiaryContainer: Color(0xff723523),
      onTertiaryContainer: Color(0xffffdbd1),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff16130b),
      onSurface: Color(0xffeae2d4),
      onSurfaceVariant: Color(0xffcfc6b4),
      outline: Color(0xff989080),
      outlineVariant: Color(0xff4c4639),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae2d4),
      inversePrimary: Color(0xff725c0c),
      primaryFixed: Color(0xffffe088),
      onPrimaryFixed: Color(0xff241a00),
      primaryFixedDim: Color(0xffe2c46d),
      onPrimaryFixedVariant: Color(0xff574500),
      secondaryFixed: Color(0xffa1f2db),
      onSecondaryFixed: Color(0xff002019),
      secondaryFixedDim: Color(0xff85d6c0),
      onSecondaryFixedVariant: Color(0xff005142),
      tertiaryFixed: Color(0xffffdbd1),
      onTertiaryFixed: Color(0xff3a0b01),
      tertiaryFixedDim: Color(0xffffb5a0),
      onTertiaryFixedVariant: Color(0xff723523),
      surfaceDim: Color(0xff16130b),
      surfaceBright: Color(0xff3d392f),
      surfaceContainerLowest: Color(0xff110e07),
      surfaceContainerLow: Color(0xff1f1b13),
      surfaceContainer: Color(0xff231f17),
      surfaceContainerHigh: Color(0xff2d2a21),
      surfaceContainerHighest: Color(0xff38342b),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff9da80),
      surfaceTint: Color(0xffe2c46d),
      onPrimary: Color(0xff302400),
      primaryContainer: Color(0xffa98e3d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff9becd5),
      onSecondary: Color(0xff002c23),
      secondaryContainer: Color(0xff4e9f8b),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd2c7),
      onTertiary: Color(0xff481506),
      tertiaryContainer: Color(0xffcb7c66),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff16130b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe5dbc9),
      outline: Color(0xffbab1a0),
      outlineVariant: Color(0xff97907f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae2d4),
      inversePrimary: Color(0xff594600),
      primaryFixed: Color(0xffffe088),
      onPrimaryFixed: Color(0xff171000),
      primaryFixedDim: Color(0xffe2c46d),
      onPrimaryFixedVariant: Color(0xff433400),
      secondaryFixed: Color(0xffa1f2db),
      onSecondaryFixed: Color(0xff001510),
      secondaryFixedDim: Color(0xff85d6c0),
      onSecondaryFixedVariant: Color(0xff003e33),
      tertiaryFixed: Color(0xffffdbd1),
      onTertiaryFixed: Color(0xff290500),
      tertiaryFixedDim: Color(0xffffb5a0),
      onTertiaryFixedVariant: Color(0xff5d2514),
      surfaceDim: Color(0xff16130b),
      surfaceBright: Color(0xff48443a),
      surfaceContainerLowest: Color(0xff090703),
      surfaceContainerLow: Color(0xff211d15),
      surfaceContainer: Color(0xff2b281f),
      surfaceContainerHigh: Color(0xff363229),
      surfaceContainerHighest: Color(0xff413d34),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffefc8),
      surfaceTint: Color(0xffe2c46d),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffdec069),
      onPrimaryContainer: Color(0xff100b00),
      secondary: Color(0xffb3ffe9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff82d2bc),
      onSecondaryContainer: Color(0xff000e0a),
      tertiary: Color(0xffffece7),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffaf99),
      onTertiaryContainer: Color(0xff1e0300),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff16130b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff9efdc),
      outlineVariant: Color(0xffcbc2b0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffeae2d4),
      inversePrimary: Color(0xff594600),
      primaryFixed: Color(0xffffe088),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffe2c46d),
      onPrimaryFixedVariant: Color(0xff171000),
      secondaryFixed: Color(0xffa1f2db),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff85d6c0),
      onSecondaryFixedVariant: Color(0xff001510),
      tertiaryFixed: Color(0xffffdbd1),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb5a0),
      onTertiaryFixedVariant: Color(0xff290500),
      surfaceDim: Color(0xff16130b),
      surfaceBright: Color(0xff545045),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff231f17),
      surfaceContainer: Color(0xff343027),
      surfaceContainerHigh: Color(0xff3f3b31),
      surfaceContainerHighest: Color(0xff4b463c),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
