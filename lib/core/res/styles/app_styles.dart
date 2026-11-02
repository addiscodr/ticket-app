import 'package:flutter/material.dart';

Color primary = const Color(0xFF687DAF);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = Color(0xFF3B3B3B);
  static Color bgColor = Color(0xFFEEEDF2);
  static Color ticketBlue = Color(0xFF526799);
  static Color ticketOrange = Color(0xFFF37B67);
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w900,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w900,
    color: textColor,
  );

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
