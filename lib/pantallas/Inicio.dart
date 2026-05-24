import 'package:flutter/material.dart';
import 'package:geo_calc/pantallas/catalogo_figuras.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora Geométrica"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 280,
                
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CatalogoFiguras()
                        ),
                    );
                  },
                  child: const Text(
                    'INICIAR',
                    style: TextStyle(fontSize: 18)
                  ),
                ),
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}
