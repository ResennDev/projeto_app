import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_app/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'theme_app',
      theme: _buildTheme(Brightness.dark),
      home: LoginPage(),
    );
  }
}

ThemeData _buildTheme(Brightness brightness) {
  final baseTheme = ThemeData(brightness: brightness);
  return baseTheme.copyWith(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: brightness,
    ),
    textTheme: GoogleFonts.oswaldTextTheme(baseTheme.textTheme),
  );
}
