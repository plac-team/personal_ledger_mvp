import 'package:flutter/material.dart' hide Colors;

import 'abs_colors.dart';

ColorScheme colorScheme(AbsColors absColors) {
  return ColorScheme(
    brightness: Brightness.light,
    primary: absColors.primaryColor,
    secondary: absColors.subColor,
    error: absColors.errorColor,
    background: absColors.backgroundColor,
    surface: absColors.surfaceColor,
    onPrimary: absColors.whiteColor,
    onSecondary: absColors.whiteColor,
    onError: absColors.whiteColor,
    onBackground: absColors.blackColor,
    onSurface: absColors.blackColor,
  );
}
