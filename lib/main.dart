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

        scaffoldBackgroundColor:
            const Color.fromARGB(255, 225, 242, 251),
        appBarTheme: const AppBarTheme(

          backgroundColor:
              Color.fromARGB(255, 8, 141, 213),

          foregroundColor: Colors.white,

          centerTitle: true,

          elevation: 4,
        ),

        // ===== BOTONES =====

        elevatedButtonTheme: ElevatedButtonThemeData(

          style: ElevatedButton.styleFrom(

            backgroundColor:
                const Color.fromARGB(255, 25, 120, 172),

            foregroundColor: Colors.white,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),

      home: const Inicio(),
    );
  }
}
