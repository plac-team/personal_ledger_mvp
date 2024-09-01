import 'package:flutter/material.dart';

import 'color/abs_colors.dart';
import 'color/color_scheme.dart';
import 'text/abs_texts.dart';
import 'text/text_theme.dart';

class CustomTheme {
  static AbsColors absColors = const AbsColors();
  static AbsTexts absTexts = const AbsTexts();

  static ThemeData themeData = ThemeData(
    fontFamily: "GmarketSansOTF",
    textTheme: textTheme(absColors, absTexts),
    colorScheme: colorScheme(absColors),
    useMaterial3: true,
  );
}
