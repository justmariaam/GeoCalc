import 'package:flutter/material.dart';
import 'package:geo_calc/utils/formulas.dart';

class Calculadora extends StatefulWidget {
  final String nombreFigura;
  final String imagenFigura;
  const Calculadora({super.key, required this.nombreFigura, required this.imagenFigura});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {

  bool calcularArea = false;
  bool calcularPerimetro = false;

  final ladoController = TextEditingController();
  final baseController = TextEditingController();
  final alturaController = TextEditingController();
  final radioController = TextEditingController();
  final diagonalMayorController = TextEditingController();
  final diagonalMenorController = TextEditingController();
  final baseMayorController = TextEditingController();
  final baseMenorController = TextEditingController();
  final apotemaController = TextEditingController();
  final lado1Controller = TextEditingController();
  final lado2Controller = TextEditingController();
  final lado3Controller = TextEditingController();
  final diagonal1Controller = TextEditingController();

  String resultadoArea = "";
  String resultadoPerimetro = "";

  @override
  void dispose() {
    ladoController.dispose();
    baseController.dispose();
    alturaController.dispose();
    radioController.dispose();
    diagonalMayorController.dispose();
    diagonalMenorController.dispose();
    baseMayorController.dispose();
    baseMenorController.dispose();
    apotemaController.dispose();
    diagonal1Controller.dispose();
    lado1Controller.dispose();
    lado2Controller.dispose();
    lado3Controller.dispose();
    super.dispose();
  }

  double obtenerNumero(TextEditingController controller) {
    return double.tryParse(controller.text) ?? 0;
  }

  void calcularResultados() {
    double area = 0;
    double perimetro = 0;

    switch (widget.nombreFigura) {
      case 'Cuadrado':
        double lado = obtenerNumero(ladoController);
        if(calcularArea){
          area = Formulas.calcularAreaCuadrado(lado);
          resultadoArea = "Área: ${area.toStringAsFixed(2)}";
        }
        if(calcularPerimetro){
          perimetro = Formulas.calcularPerimetroCuadrado(lado);
          resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
        }
        break;

      case 'Rectángulo':
        double base = obtenerNumero(baseController);
        double altura = obtenerNumero(alturaController);
        if(calcularArea){
          area = Formulas.calcularAreaRectangulo(base, altura);
          resultadoArea = "Área: ${area.toStringAsFixed(2)}";
        }
        if(calcularPerimetro){
          perimetro = Formulas.calcularPerimetroRectangulo(base, altura);
          resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
        }
        break;

      case 'Triángulo':
        double base = obtenerNumero(baseController);
        double altura = obtenerNumero(alturaController);
        if(calcularArea){
          area = Formulas.calcularAreaTriangulo(base, altura);
          resultadoArea = "Área: ${area.toStringAsFixed(2)}";
        }
        if(calcularPerimetro){
          perimetro = Formulas.calcularPerimetroTriangulo(obtenerNumero(lado1Controller), obtenerNumero(lado2Controller), obtenerNumero(lado3Controller));
          resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
        }
        break;

      case 'Círculo':
        double radio = obtenerNumero(radioController);
        if(calcularArea){
          area = Formulas.calcularAreaCirculo(radio);
          resultadoArea = "Área: ${area.toStringAsFixed(2)}";
        }
        if(calcularPerimetro){
          perimetro = Formulas.calcularPerimetroCirculo(radio);
          resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
        }
        break;

      case 'Trapecio':
        double baseMayor = obtenerNumero(baseMayorController);
        double baseMenor = obtenerNumero(baseMenorController);
        
        if(calcularArea){
          double altura = obtenerNumero(alturaController);
          area = Formulas.calcularAreaTrapecio(baseMayor, baseMenor, altura);
          resultadoArea = "Área: ${area.toStringAsFixed(2)}";
        }
        if(calcularPerimetro){
          double diagonal = obtenerNumero(diagonal1Controller);
          perimetro = Formulas.calcularPerimetroTrapecio(baseMayor, baseMenor, diagonal);
          resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
        }
        break;

      case 'Rombo':
        double diagonalMayor = obtenerNumero(diagonalMayorController);
        double diagonalMenor = obtenerNumero(diagonalMenorController);
        if(calcularArea){
          area = Formulas.calcularAreaRombo(diagonalMayor, diagonalMenor);
          resultadoArea = "Área: ${area.toStringAsFixed(2)}";
        }
        if(calcularPerimetro){
          perimetro = Formulas.calcularPerimetroRombo(obtenerNumero(ladoController));
          resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
        }
        break;

      case 'Paralelogramo':
        double base = obtenerNumero(baseController);
        double altura = obtenerNumero(alturaController);
        if(calcularArea){
          area = Formulas.calcularAreaParalelogramo(base, altura);
          resultadoArea = "Área: ${area.toStringAsFixed(2)}";
        }
        if(calcularPerimetro){
          perimetro = Formulas.calcularPerimetroParalelogramo(obtenerNumero(lado1Controller), obtenerNumero(lado2Controller));
          resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
        }
        break;
      

      case 'Pentágono':
        double perimetro = obtenerNumero(ladoController) * 5;
        double apotema = obtenerNumero(apotemaController);
        if(calcularArea){
          area = Formulas.calcularAreaPentagono(perimetro, apotema);
          resultadoArea = "Área: ${area.toStringAsFixed(2)}";
        }
        if(calcularPerimetro){
          resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
        }
        break;

      case 'Hexágono':
        double perimetro = obtenerNumero(ladoController) * 6;
        double apotema = obtenerNumero(apotemaController);
        if(calcularArea){
          area = Formulas.calcularAreaHexagono(perimetro, apotema);
          resultadoArea = "Área: ${area.toStringAsFixed(2)}";
        }
        if(calcularPerimetro){
          resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
        }
        break;
        
    }
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    final esCuadrado = widget.nombreFigura == 'Cuadrado';
    final esRectangulo = widget.nombreFigura == 'Rectángulo';
    final esTriangulo = widget.nombreFigura == 'Triángulo';
    final esCirculo = widget.nombreFigura == 'Círculo';
    final esTrapecio = widget.nombreFigura == 'Trapecio';
    final esRombo = widget.nombreFigura == 'Rombo';
    final esParalelogramo = widget.nombreFigura == 'Paralelogramo';
    final esPentagono = widget.nombreFigura == 'Pentágono';
    final esHexagono = widget.nombreFigura == 'Hexágono';


    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Geométrica'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Image.asset(widget.imagenFigura, height: 180),
            Text(widget.nombreFigura),

            const SizedBox(height: 25),

            const Text("¿Qué deseas calcular?"),
            CheckboxListTile(
              title: const Text("Área"),
              value: calcularArea,
              onChanged: (value) {
                if(!value! && !calcularPerimetro){
                  return;
                }
                setState(() {
                  calcularArea = value;
                  resultadoArea = "";
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Perímetro"),
              value: calcularPerimetro,
              onChanged: (value) {
                if(!value! && !calcularArea){
                  return;
                }
                setState(() {
                  calcularPerimetro = value;
                  resultadoPerimetro = "";
                });
              },
            ),

            const SizedBox(height: 20),

            if (esCuadrado || esRombo || esPentagono || esHexagono)
              TextField(
                controller: ladoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Lado',
                  border: OutlineInputBorder(),
                ),
              ),

            const SizedBox(height: 15),

            if (esRectangulo || esTriangulo || esParalelogramo)
              TextField(
                controller: baseController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Base',
                  border: OutlineInputBorder(),
                ),
              ),

            const SizedBox(height: 15),

            if ((esRectangulo ||
                    esTriangulo ||
                    esTrapecio ||
                    esParalelogramo) &&
                calcularArea)
              TextField(
                controller: alturaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Altura',
                  border: OutlineInputBorder(),
                ),
              ),

            const SizedBox(height: 15),

            if (esCirculo)
              TextField(
                controller: radioController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Radio',
                  border: OutlineInputBorder(),
                ),
              ),

            const SizedBox(height: 15),

            if (esTrapecio)
              Column(
                children: [

                  TextField(
                    controller: baseMayorController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Base mayor',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextField(
                    controller: baseMenorController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Base menor',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  if (calcularPerimetro)
                    TextField(
                      controller: diagonal1Controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Lado diagonal',
                        border: OutlineInputBorder(),
                      ),
                    ),
                ],
              ),

            const SizedBox(height: 15),

            // ===== ROMBO =====

            if (esRombo && calcularArea)
              Column(
                children: [

                  TextField(
                    controller: diagonalMayorController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Diagonal mayor',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextField(
                    controller: diagonalMenorController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Diagonal menor',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),

            const SizedBox(height: 15),

            if (esParalelogramo && calcularPerimetro)
              Column(
                children: [

                  TextField(
                    controller: lado1Controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Lado 1',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextField(
                    controller: lado2Controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Lado 2',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),

            const SizedBox(height: 15),

            // ===== TRIÁNGULO =====

            if (esTriangulo && calcularPerimetro)
              Column(
                children: [

                  TextField(
                    controller: lado1Controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Lado 1',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextField(
                    controller: lado2Controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Lado 2',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  TextField(
                    controller: lado3Controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Lado 3',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),

            const SizedBox(height: 15),

            // ===== PENTÁGONO / HEXÁGONO =====

            if ((esPentagono || esHexagono) && calcularArea)
              TextField(
                controller: apotemaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Apotema',
                  border: OutlineInputBorder(),
                ),
              ),

            const SizedBox(height: 30),

            // ===== BOTÓN =====

            SizedBox(
              height: 50,

              child: ElevatedButton(
                onPressed: calcularResultados,

                child: const Text(
                  'Calcular',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ===== RESULTADOS =====

            if (resultadoArea.isNotEmpty)
              Text(
                resultadoArea,
                textAlign: TextAlign.center,

                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

            const SizedBox(height: 10),

            if (resultadoPerimetro.isNotEmpty)
              Text(
                resultadoPerimetro,
                textAlign: TextAlign.center,

                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

          ],
        ),
      )
    );
  }
}
