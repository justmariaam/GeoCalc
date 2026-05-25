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

}

