import 'package:flutter/material.dart';

import 'widgets/expenses.dart';

var kColor = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 2, 183, 250),
);

var kDarkColor = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 3, 91, 206),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColor,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColor.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColor.primaryContainer,
            foregroundColor: kDarkColor.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColor,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColor.onPrimaryContainer,
          foregroundColor: kColor.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColor.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColor.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColor.onSecondaryContainer,
            fontSize: 16,
          ),
        ),
      ),
      // themeMode: ThemeMode.system, // default
      home: const Expenses(),
    ),
  );
  // });
}