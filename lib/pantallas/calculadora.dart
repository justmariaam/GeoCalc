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

  bool calcularVolumen = false;


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
  String resultadoVolumen = "";

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

  InputDecoration estiloCampo(String texto){
  return InputDecoration(
    labelText: texto,
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  );
}

  void calcularResultados() {
  double area = 0;
  double perimetro = 0;
  double areaSuperficial = 0;

  switch (widget.nombreFigura) {
    // ========== FIGURAS PLANAS ==========
    case 'Cuadrado':
      double lado = obtenerNumero(ladoController);
      if (calcularArea) {
        area = Formulas.calcularAreaCuadrado(lado);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroCuadrado(lado);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Rectángulo':
      double base = obtenerNumero(baseController);
      double altura = obtenerNumero(alturaController);
      if (calcularArea) {
        area = Formulas.calcularAreaRectangulo(base, altura);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroRectangulo(base, altura);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Triángulo':
      double base = obtenerNumero(baseController);
      double altura = obtenerNumero(alturaController);
      if (calcularArea) {
        area = Formulas.calcularAreaTriangulo(base, altura);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroTriangulo(
          obtenerNumero(lado1Controller),
          obtenerNumero(lado2Controller),
          obtenerNumero(lado3Controller)
        );
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Círculo':
      double radio = obtenerNumero(radioController);
      if (calcularArea) {
        area = Formulas.calcularAreaCirculo(radio);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroCirculo(radio);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Trapecio':
      double baseMayor = obtenerNumero(baseMayorController);
      double baseMenor = obtenerNumero(baseMenorController);
      if (calcularArea) {
        double altura = obtenerNumero(alturaController);
        area = Formulas.calcularAreaTrapecio(baseMayor, baseMenor, altura);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        double ladoDiagonal = obtenerNumero(diagonal1Controller);
        perimetro = Formulas.calcularPerimetroTrapecio(baseMayor, baseMenor, ladoDiagonal);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Rombo':
      if (calcularArea) {
        double diagonalMayor = obtenerNumero(diagonalMayorController);
        double diagonalMenor = obtenerNumero(diagonalMenorController);
        area = Formulas.calcularAreaRombo(diagonalMayor, diagonalMenor);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        double lado = obtenerNumero(ladoController);
        perimetro = Formulas.calcularPerimetroRombo(lado);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Paralelogramo':
      double base = obtenerNumero(baseController);
      double altura = obtenerNumero(alturaController);
      if (calcularArea) {
        area = Formulas.calcularAreaParalelogramo(base, altura);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroParalelogramo(
          obtenerNumero(lado1Controller),
          obtenerNumero(lado2Controller)
        );
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Pentágono':
      double lado = obtenerNumero(ladoController);
      double perimetroFigura = lado * 5;
      if (calcularArea) {
        double apotema = obtenerNumero(apotemaController);
        area = Formulas.calcularAreaPentagono(perimetroFigura, apotema);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        resultadoPerimetro = "Perímetro: ${perimetroFigura.toStringAsFixed(2)}";
      }
      break;

    case 'Hexágono':
      double lado = obtenerNumero(ladoController);
      double perimetroFigura = lado * 6;
      if (calcularArea) {
        double apotema = obtenerNumero(apotemaController);
        area = Formulas.calcularAreaHexagono(perimetroFigura, apotema);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        resultadoPerimetro = "Perímetro: ${perimetroFigura.toStringAsFixed(2)}";
      }
      break;

    case 'Elipse':
      double ejeMayor = obtenerNumero(diagonalMayorController);
      double ejeMenor = obtenerNumero(diagonalMenorController);
      if (calcularArea) {
        area = Formulas.calcularAreaElipse(ejeMayor, ejeMenor);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroElipse(ejeMayor, ejeMenor);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Octágono':
      double lado = obtenerNumero(ladoController);
      if (calcularArea) {
        area = Formulas.calcularAreaOctagono(lado);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroOctagono(lado);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Heptágono':
      double lado = obtenerNumero(ladoController);
      if (calcularArea) {
        area = Formulas.calcularAreaHeptagono(lado);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroHeptagono(lado);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Nonágono':
      double lado = obtenerNumero(ladoController);
      if (calcularArea) {
        area = Formulas.calcularAreaNonagono(lado);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroNonagono(lado);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Decágono':
      double lado = obtenerNumero(ladoController);
      if (calcularArea) {
        area = Formulas.calcularAreaDecagono(lado);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroDecagono(lado);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    case 'Dodecágono':
      double lado = obtenerNumero(ladoController);
      if (calcularArea) {
        area = Formulas.calcularAreaDodecagono(lado);
        resultadoArea = "Área: ${area.toStringAsFixed(2)}";
      }
      if (calcularPerimetro) {
        perimetro = Formulas.calcularPerimetroDodecagono(lado);
        resultadoPerimetro = "Perímetro: ${perimetro.toStringAsFixed(2)}";
      }
      break;

    // ========== CUERPOS GEOMÉTRICOS ==========
    case 'Cubo':
      double lado = obtenerNumero(ladoController);
      if (calcularArea) {
        areaSuperficial = Formulas.calcularAreaSuperficialCubo(lado);
        resultadoArea = "Área superficial: ${areaSuperficial.toStringAsFixed(2)}";
      }
      if (calcularVolumen) {
        resultadoVolumen = "Volumen: ${Formulas.calcularVolumenCubo(lado).toStringAsFixed(2)}";
      }
      break;

    case 'Esfera':
      double radio = obtenerNumero(radioController);
      if (calcularArea) {
        areaSuperficial = Formulas.calcularAreaSuperficialEsfera(radio);
        resultadoArea = "Área superficial: ${areaSuperficial.toStringAsFixed(2)}";
      }
      if (calcularVolumen) {
        resultadoVolumen = "Volumen: ${Formulas.calcularVolumenEsfera(radio).toStringAsFixed(2)}";
      }
      break;

    case 'Cilindro':
      double radio = obtenerNumero(radioController);
      double altura = obtenerNumero(alturaController);
      if (calcularArea) {
        areaSuperficial = Formulas.calcularAreaSuperficialCilindro(radio, altura);
        resultadoArea = "Área superficial: ${areaSuperficial.toStringAsFixed(2)}";
      }
      if (calcularVolumen) {
        resultadoVolumen = "Volumen: ${Formulas.calcularVolumenCilindro(radio, altura).toStringAsFixed(2)}";
      }
      break;

    case 'Cono':
      double radio = obtenerNumero(radioController);
      double altura = obtenerNumero(alturaController);
      if (calcularArea) {
        areaSuperficial = Formulas.calcularAreaSuperficialCono(radio, altura);
        resultadoArea = "Área superficial: ${areaSuperficial.toStringAsFixed(2)}";
      }
      if (calcularVolumen) {
        resultadoVolumen = "Volumen: ${Formulas.calcularVolumenCono(radio, altura).toStringAsFixed(2)}";
      }
      break;

    case 'Prisma':
      double largo = obtenerNumero(baseController);
      double ancho = obtenerNumero(lado1Controller);
      double altura = obtenerNumero(alturaController);
      if (calcularArea) {
        areaSuperficial = Formulas.calcularAreaSuperficialPrisma(largo, ancho, altura);
        resultadoArea = "Área superficial: ${areaSuperficial.toStringAsFixed(2)}";
      }
      if (calcularVolumen) {
        resultadoVolumen = "Volumen: ${Formulas.calcularVolumenPrisma(largo, ancho, altura).toStringAsFixed(2)}";
      }
      break;

    case 'Pirámide':
      double ladoBase = obtenerNumero(baseController);
      double altura = obtenerNumero(alturaController);
      if (calcularArea) {
        areaSuperficial = Formulas.calcularAreaSuperficialPiramideBaseCuadrada(ladoBase, altura);
        resultadoArea = "Área superficial: ${areaSuperficial.toStringAsFixed(2)}";
      }
      if (calcularVolumen) {
        double areaBase = ladoBase * ladoBase;
        resultadoVolumen = "Volumen: ${Formulas.calcularVolumenPiramide(areaBase, altura).toStringAsFixed(2)}";
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
    final esCubo = widget.nombreFigura=="Cubo";
    final esCilindro = widget.nombreFigura=="Cilindro";
    final esCono = widget.nombreFigura=="Cono";
    final esEsfera = widget.nombreFigura=="Esfera";
    final esPrisma = widget.nombreFigura=="Prisma";
    final esPiramide = widget.nombreFigura=="Pirámide";
    final esElipse = widget.nombreFigura == 'Elipse';
    final esOctagono = widget.nombreFigura == 'Octágono';
    final esHeptagono = widget.nombreFigura == 'Heptágono';
    final esNonagono = widget.nombreFigura == 'Nonágono';
    final esDecagono = widget.nombreFigura == 'Decágono';
    final esDodecagono = widget.nombreFigura == 'Dodecágono';
    final esFiguraPlana = esCuadrado || esRectangulo || esTriangulo ||
    esCirculo ||  esTrapecio ||  esRombo ||  esParalelogramo ||  esPentagono ||
    esHexagono ||  esOctagono || esHeptagono ||  esNonagono ||  esDecagono ||
    esDodecagono ||  esElipse; 
    final esCuerpoGeometrico = esCubo || esCilindro || esCono || 
                              esEsfera || esPrisma || esPiramide;

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
            Text(widget.nombreFigura, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

            const SizedBox(height: 25),

            const Text("¿Qué deseas calcular?", style: TextStyle(fontSize: 18)),
            
            const SizedBox(height: 10),
            
            // Checkbox de Área (siempre visible)
            CheckboxListTile(
              title: const Text("Área", style: TextStyle(fontSize: 16)),
              value: calcularArea,
              onChanged: (value) {
                if (value == false && !calcularPerimetro && !calcularVolumen) {
                  return;
                }
                setState(() {
                  calcularArea = value ?? false;
                  resultadoArea = "";
                });
              },
            ),

            // Checkbox de Perímetro (solo visible para figuras planas)
            if (esFiguraPlana)
              CheckboxListTile(
                title: const Text("Perímetro", style: TextStyle(fontSize: 16)),
                value: calcularPerimetro,
                onChanged: (value) {
                  if (value == false && !calcularArea && !calcularVolumen) {
                    return;
                  }
                  setState(() {
                    calcularPerimetro = value ?? false;
                    resultadoPerimetro = "";
                  });
                },
              ),

            // Checkbox de Volumen (solo visible para cuerpos geométricos)
            if (esCuerpoGeometrico)
              CheckboxListTile(
                title: const Text("Volumen", style: TextStyle(fontSize: 16)),
                value: calcularVolumen,
                onChanged: (value) {
                  if (value == false && !calcularArea && !calcularPerimetro) {
                    return;
                  }
                  setState(() {
                    calcularVolumen = value ?? false;
                    resultadoVolumen = "";
                  });
                },
              ),

           const SizedBox(height:15),

            // ===== BASE =====
            if (
              esRectangulo ||
              esTriangulo ||
              esParalelogramo
            )
            TextField(
              controller: baseController,
              keyboardType: TextInputType.number,
              decoration: estiloCampo("Base"),
            ),

            const SizedBox(height:15),

            // ===== ALTURA =====
            if (

            ((esRectangulo ||
            esTriangulo ||
            esTrapecio ||
            esParalelogramo) &&
            calcularArea)

            ||

            ((esCilindro ||
            esCono ||
            esPrisma ||
            esPiramide) &&
            calcularVolumen)

            )

            TextField(
              controller: alturaController,
              keyboardType: TextInputType.number,
              decoration: estiloCampo("Altura"),
            ),

            const SizedBox(height:15),

            // ===== RADIO =====
            if (

            esCirculo ||

            ((esEsfera ||
            esCilindro ||
            esCono) &&
            calcularVolumen)

            )

            TextField(
              controller: radioController,
              keyboardType: TextInputType.number,
              decoration: estiloCampo("Radio"),
            ),

            const SizedBox(height:15),

            // ===== PRISMA =====
            if (esPrisma && calcularVolumen)
              Column(
                children: [
                  TextField(
                    controller: baseController,
                    keyboardType: TextInputType.number,
                    decoration: estiloCampo("Largo"),
                  ),

                  const SizedBox(height: 15),

                  TextField(
                    controller: lado1Controller,
                    keyboardType: TextInputType.number,
                    decoration: estiloCampo("Ancho"),
                  ),
                ],
              ),

            if (
                esCuadrado ||
                esRombo ||
                esPentagono ||
                esHexagono ||
                esOctagono ||
                esHeptagono ||
                esNonagono ||
                esDecagono ||
                esDodecagono ||
                (esCubo && calcularVolumen)
              )
              TextField(
                controller: ladoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Lado',
                  border: OutlineInputBorder(),
                ),
              ),

            // ===== PIRÁMIDE =====
            if (esPiramide && calcularVolumen)
            TextField(
              controller: baseController,
              keyboardType: TextInputType.number,
              decoration: estiloCampo("Área base"),
            ),

            const SizedBox(height:15),

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

            if (esElipse)
              Column(
                children: [
                  TextField(
                    controller: diagonalMayorController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Eje mayor (semieje)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: diagonalMenorController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Eje menor (semieje)',
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

            if (resultadoArea.isNotEmpty)
              Text(
                resultadoArea,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1565C0),
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
                  color: Color(0xFF1565C0),
                ),
              ),

              const SizedBox(height:10),

            if(resultadoVolumen.isNotEmpty)
            Text(
              resultadoVolumen,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

          ],
        ),
      ),
    );
  }
}