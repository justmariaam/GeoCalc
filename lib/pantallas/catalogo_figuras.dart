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
        title: const Text("Catálogo de Figuras"),
      ),

      body: Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFEAF6FF),
              Color(0xFFB3E5FC),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),

          child: Column(
            children: [

              const SizedBox(height: 10),

              const Text(
                "Figuras Geométricas",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1565C0),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Selecciona una figura",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 25),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                itemCount: figurasPlanas.length,

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.85,
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
                      elevation: 8,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),

                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(25),

                          gradient: const LinearGradient(
                            colors: [
                              Colors.white,
                              Color(0xFFE3F2FD),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(12),

                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment.center,

                            children: [

                              Container(
                                padding:
                                    const EdgeInsets.all(10),

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(20),

                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 8,
                                      offset: Offset(0,4),
                                    )
                                  ],
                                ),

                                child: Image.asset(
                                  figura['imagen']!,
                                  height: 70,
                                ),
                              ),

                              const SizedBox(height: 15),

                              Text(
                                figura['nombre']!,
                                textAlign: TextAlign.center,

                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight:
                                      FontWeight.bold,
                                  color:
                                      Color(0xFF1565C0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}