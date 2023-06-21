import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  dividerColor: Colors.white10,
  scaffoldBackgroundColor: Color.fromARGB(255, 31, 31, 31),
  primarySwatch: Colors.grey,
  appBarTheme: const AppBarTheme(
    elevation: 0,
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
      )),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontWeight: FontWeight.w700,
        fontSize: 14),
  ),
  useMaterial3: true,
);
