import 'dart:ui';

import 'colors.dart';

class AbsColors extends AbstractThemeColors {
  const AbsColors();
}

abstract class AbstractThemeColors {
  const AbstractThemeColors();

  Color get primaryColor => Colors.darkBrown;
  Color get subColor => Colors.lightBrown;
  Color get errorColor => Colors.error;
  Color get backgroundColor => Colors.extraYellowBrown;
  Color get surfaceColor => Colors.yellowBrown;

  Color get whiteColor => Colors.white;
  Color get blackColor => Colors.black;
}
