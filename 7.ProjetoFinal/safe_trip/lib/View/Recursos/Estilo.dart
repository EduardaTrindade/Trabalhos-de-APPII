import 'package:flutter/material.dart';

ThemeData estilo() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.grey.shade300
    ),
    
    // Botão flutuante (cor)
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.grey.shade500,
      foregroundColor: Colors.white,
      hoverColor: Colors.grey.shade300
    )
  );
}