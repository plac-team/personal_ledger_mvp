import 'dart:ui';

class Colors extends Color {
  // Basic Colors
  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color extraLightGrey = Color.fromARGB(255, 203, 203, 203);
  static const Color lightGrey = Color.fromARGB(255, 152, 152, 152);
  static const Color mediumGrey = Color.fromARGB(255, 102, 102, 102);
  static const Color darkGrey = Color.fromARGB(255, 54, 54, 54);
  static const Color black = Color.fromARGB(255, 0, 0, 0);

  // Primary Colors
  static const Color yellowBrown = Color.fromARGB(255, 252, 220, 170);
  static const Color lightBrown = Color.fromARGB(255, 180, 103, 78);
  static const Color purpleBrown = Color.fromARGB(255, 117, 98, 96);
  static const Color darkBrown = Color.fromARGB(255, 71, 49, 52);

  // Background Colors
  static const Color extraYellowBrown = Color.fromARGB(255, 253, 244, 229);

  // etc.
  static const Color error = Color.fromARGB(255, 255, 0, 0);
  static const Color pass = Color.fromARGB(255, 76, 175, 80);
  static const Color transparent = Color.fromARGB(0, 0, 0, 0);

  Colors(super.value);
}
