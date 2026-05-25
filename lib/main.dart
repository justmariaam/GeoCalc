import 'package:flutter/material.dart';
import 'pantallas/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,

        // Fondo general
        scaffoldBackgroundColor: const Color(0xFFEAF6FF),

        // AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF42A5F5),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),

        // Botones
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF42A5F5),
            foregroundColor: Colors.white,
            elevation: 8,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),

            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 15,
            ),
          ),
        ),

        // TextFields
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,

          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: Colors.blue.shade100,
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              color: Color(0xFF42A5F5),
              width: 2,
            ),
          ),
        ),

        // Cards
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 8,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),

        // Checkboxes
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.all(
            const Color(0xFF42A5F5),
          ),
        ),

        // Tipografía
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF1565C0),
          ),

          bodyMedium: TextStyle(
            fontSize: 16,
          ),
        ),
      ),

      home: const Inicio(),
    );
  }
}