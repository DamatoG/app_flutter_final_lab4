import 'package:flutter/material.dart';

class DefaultTheme {
  static const Color primary = Color.fromARGB(255, 66, 89, 153);
  static const Color primaryDark = Color.fromARGB(255, 0, 0, 0);

  static final ThemeData defaultTheme = ThemeData.light().copyWith(
    primaryColor: Color.fromARGB(255, 66, 89, 153),
    appBarTheme: const AppBarTheme(backgroundColor: primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
            backgroundColor: primary,
            foregroundColor: Color.fromARGB(255, 10, 10, 10))),
    listTileTheme:
        const ListTileThemeData(iconColor: primary, textColor: primary),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      backgroundColor: primaryDark,
      primaryColor: Color.fromARGB(255, 12, 12, 12),
      appBarTheme: const AppBarTheme(backgroundColor: primaryDark),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: primary, foregroundColor: Colors.white)),
      listTileTheme: const ListTileThemeData(iconColor: Colors.white));
}
