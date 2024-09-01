import 'dart:ui';

import 'fonts.dart';

class AbsTexts extends AbstractThemeTexts {
  const AbsTexts();
}

abstract class AbstractThemeTexts {
  const AbstractThemeTexts();

  double get titleLargeSize => Fonts.fontSize24;
  double get titleMediumSize => Fonts.fontSize20;
  double get titleSmallSize => Fonts.fontSize18;
  double get bodyLargeSize => Fonts.fontSize15;
  double get bodyMediumSize => Fonts.fontSize13;
  double get bodySmallSize => Fonts.fontSize12;
  double get bodyExtraSmallSize => Fonts.fontSize10;

  double get letterSpacing => Fonts.letterSpacing;

  FontWeight get bold => Fonts.fontWeightBold;
  FontWeight get medium => Fonts.fontWeightMedium;
  FontWeight get light => Fonts.fontWeightLight;
}
