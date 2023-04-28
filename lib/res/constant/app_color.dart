import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: const Color(0x1A51275E),
  100: const Color(0x3351275E),
  200: const Color(0x4D51275E),
  300: const Color(0x6651275E),
  400: const Color(0x8051275E),
  500: const Color(0x9951275E),
  600: const Color(0xB351275E),
  700: const Color(0xCC51275E),
  800: const Color(0xE651275E),
  900: const Color(0xFF51275E),
};

class AppColors {
  static MaterialColor materialColor = MaterialColor(0xFF51275E, color);
  static const Color appColor = Color(0xFF51275E);
  static const Color buttonColor = Color(0xFFB95DC8);
  static const Color yogaBliss = Color(0xFF4C4C4C);
  static const Color personalizeBackground = Color(0xFFE1A9EA);
  static const Color descriptionColor = Color(0xFF72497E);
  static const Color appBar = Colors.transparent;
  static const Color red = Colors.red;
  static const Color black = Colors.black;
  static const Color white = Colors.white;
}
