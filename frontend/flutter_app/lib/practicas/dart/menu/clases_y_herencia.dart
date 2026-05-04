import 'dart:math';

abstract class Figura {
  double get area;
  double get perimetro;
}

class Cuadrado extends Figura {
  double lado;
  Cuadrado(this.lado);

  @override
  double get area => lado * lado;

  @override
  double get perimetro => lado * 4;
}

class Rectangulo extends Figura {
  double base;
  double altura;
  Rectangulo(this.base, this.altura);

  @override
  double get area => base * altura;

  @override
  double get perimetro => (base + altura) * 2;
}

class Circulo extends Figura {
  double radio = 0;

  @override
  double get area => pi * pow(radio, 2);

  @override
  double get perimetro => 2 * pi * radio;

  double add10() => radio + 10;
}

void main() {
  // Prueba de Círculo
  var circ = Circulo();
  circ.radio = 20;
  print("Área Círculo: ${circ.area}");
  
  // Prueba de Cuadrado
  var cuad = Cuadrado(40);
  print("Perímetro Cuadrado: ${cuad.perimetro}");
}