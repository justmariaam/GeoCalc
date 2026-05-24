import 'package:flutter/material.dart';
import 'package:geo_calc/pantallas/calculadora.dart';

class CatalogoFiguras extends StatelessWidget {
  CatalogoFiguras({super.key});

  final figurasPlanas = [
    {
      'nombre': 'Cuadrado',
      'imagen': 'assets/images/cuadrado.jpg'
    },
    {
      'nombre': 'Rectángulo',
      'imagen': 'assets/images/rectangulo.jpg'
    },
    {
      'nombre': 'Triángulo',
      'imagen': 'assets/images/triangulo.jpg'
    },
    {
      'nombre': 'Círculo',
      'imagen': 'assets/images/circulo.jpg'
    },
    {
      'nombre': 'Trapecio',
      'imagen': 'assets/images/trapecio.jpg'
    },
    {
      'nombre': 'Rombo',
      'imagen': 'assets/images/rombo.jpg'
    },
    {
      'nombre': 'Paralelogramo',
      'imagen': 'assets/images/paralelogramo.jpg'
    },
    {
      'nombre': 'Pentágono',
      'imagen': 'assets/images/pentagono.jpg'
    },
    {
      'nombre': 'Hexágono',
      'imagen': 'assets/images/hexagono.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catálogo de Figuras"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Figuras Planas"),
          
          
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),

              itemCount: figurasPlanas.length,

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.9,
              ),

              itemBuilder: (context, index) {
                final figura = figurasPlanas[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Calculadora(
                          nombreFigura: figura['nombre']!,
                          imagenFigura: figura['imagen']!,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            figura['imagen']!,
                            height: 80,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            figura['nombre']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}