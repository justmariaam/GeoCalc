import 'dart:math';

class Formulas {
  static double calcularAreaCuadrado(double lado) {
    return lado * lado;
  }

  static double calcularPerimetroCuadrado(double lado) {
    return 4 * lado;
  }

  static double calcularAreaRectangulo(double base, double altura) {
    return base * altura;
  }

  static double calcularPerimetroRectangulo(double base, double altura) {
    return 2 * (base + altura);
  }

  static double calcularAreaTriangulo(double base, double altura) {
    return (base * altura) / 2;
  }

  static double calcularPerimetroTriangulo(double lado1, double lado2, double lado3) {
    return lado1 + lado2 + lado3;
  }

  static double calcularAreaCirculo(double radio) {
    return pi * pow(radio, 2);
  }

  static double calcularPerimetroCirculo(double radio) {
    return 2 * pi * radio;
  }

  static double calcularAreaTrapecio(double baseMayor, double baseMenor, double altura) {
    return ((baseMayor + baseMenor) / 2) * altura;
  }

  static double calcularPerimetroTrapecio(double lado1, double lado2, double diagonal) {
    return lado1 + lado2 + diagonal * 2;
  }

  static double calcularAreaRombo(double diagonalMayor, double diagonalMenor) {
    return (diagonalMayor * diagonalMenor) / 2;
  }

  static double calcularPerimetroRombo(double lado) {
    return 4 * lado;
  }

  static double calcularAreaPentagono(double perimetro, double apotema) {
    return (perimetro * apotema) / 2;
  }

  static double calcularPerimetroPentagono(double lado) {
    return 5 * lado;
  }

  static double calcularAreaHexagono(double perimetro, double apotema) {
    return (perimetro * apotema) / 2;
  }

  static double calcularPerimetroHexagono(double lado) {
    return 6 * lado;
  }

  static double calcularAreaParalelogramo(double base, double altura) {
    return base * altura;
  }

  static double calcularPerimetroParalelogramo(double lado1, double lado2) {
    return 2 * (lado1 + lado2);
  }

  static double calcularAreaSuperficialCubo(double lado) {
    return 6 * lado * lado;
  }

  static double calcularAreaSuperficialEsfera(double radio) {
    return 4 * pi * radio * radio;
  }

  static double calcularAreaSuperficialCilindro(double radio, double altura) {
    double areaBase = pi * radio * radio;
    double areaLateral = 2 * pi * radio * altura;
    return 2 * areaBase + areaLateral;
  }

  static double calcularAreaSuperficialCono(double radio, double altura) {
    double generatriz = sqrt(radio * radio + altura * altura);
    double areaBase = pi * radio * radio;
    double areaLateral = pi * radio * generatriz;
    return areaBase + areaLateral;
  }

  static double calcularAreaSuperficialPrisma(double largo, double ancho, double altura) {
    double areaBase = largo * ancho;
    double areaLateral = 2 * (largo + ancho) * altura;
    return 2 * areaBase + areaLateral;
  }

  static double calcularAreaSuperficialPiramideBaseCuadrada(double ladoBase, double altura) {
    // Para pirámide de base cuadrada
    double areaBase = ladoBase * ladoBase;
    double apotemaLateral = sqrt((ladoBase / 2) * (ladoBase / 2) + altura * altura);
    double areaLateral = 2 * ladoBase * apotemaLateral;
    return areaBase + areaLateral;
  }

  static double calcularVolumenCubo(double lado) {
    return lado * lado * lado;
  }

  static double calcularVolumenEsfera(double radio) {
    return (4 / 3) * pi * pow(radio, 3);
  }

  static double calcularVolumenCilindro(double radio, double altura) {
    return pi * pow(radio, 2) * altura;
  }

  static double calcularVolumenCono(double radio, double altura) {
    return (pi * pow(radio, 2) * altura) / 3;
  }

  static double calcularVolumenPrisma(double largo, double ancho, double altura) {
    return largo * ancho * altura;
  }

  static double calcularVolumenPiramide(double areaBase, double altura) {
    return (areaBase * altura) / 3;
  }
  
  static double calcularAreaElipse(double ejeMayor, double ejeMenor) {
    return 3.14159265359 * ejeMayor * ejeMenor;
  }

  static double calcularPerimetroElipse(double ejeMayor, double ejeMenor) {
    double a = ejeMayor;
    double b = ejeMenor;
    double h = ((a - b) * (a - b)) / ((a + b) * (a + b));
    double perimetro = pi * (a + b) * (1 + (3 * h) / (10 + sqrt(4 - 3 * h)));
    return perimetro;
  }
  
  static double calcularAreaOctagono(double lado) {
    return 2 * (1 + sqrt(2)) * lado * lado;
  }
  
  static double calcularPerimetroOctagono(double lado) {
    return 8 * lado;
  }

  static double calcularAreaHeptagono(double lado) {
    return (7 * lado * lado) / (4 * tan(pi / 7));
  }

  static double calcularPerimetroHeptagono(double lado) {
    return 7 * lado;
  }

  static double calcularAreaNonagono(double lado) {
    return (9 * lado * lado) / (4 * tan(pi / 9));
  }

  static double calcularPerimetroNonagono(double lado) {
    return 9 * lado;
  }

  static double calcularAreaDecagono(double lado) {
    return (10 * lado * lado) / (4 * tan(pi / 10));
  }

  static double calcularPerimetroDecagono(double lado) {
    return 10 * lado;
  }

  static double calcularAreaDodecagono(double lado) {
    return (12 * lado * lado) / (4 * tan(pi / 12));
  }

  static double calcularPerimetroDodecagono(double lado) {
    return 12 * lado;
  }

}
