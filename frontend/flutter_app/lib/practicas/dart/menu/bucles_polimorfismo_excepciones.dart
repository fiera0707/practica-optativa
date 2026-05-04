import 'dart:io';
import 'dart:math';

void main() {
  Circulo circ = Circulo();[cite: 1]
  circ.radio = 20;[cite: 1]
  var result_area = circ.area();[cite: 1]
  var result_perim = circ.perimetro();[cite: 1]

  print(
      "El area es: ${result_area} y el perimetro es: ${result_perim} el nuevo radio es : ${circ.add10()}");[cite: 1]

  // --- SECCIÓN DE BUCLES ---
  int prev = 0, next = 1, sum;[cite: 1]
  for (int i = 0; i < 10; i++) {[cite: 1]
    print(prev);[cite: 1]
    sum = prev + next;[cite: 1]
    prev = next;[cite: 1]
    next = sum;[cite: 1]
  }

  // --- SECCIÓN DE EXCEPCIONES ---
  try {[cite: 1]
    print("Número a dividir:");[cite: 1]
    double n = double.parse(stdin.readLineSync()!);[cite: 1]
    print("Divisor:");[cite: 1]
    double divisor = double.parse(stdin.readLineSync()!);[cite: 1]

    if (divisor == 0) {[cite: 1]
      throw ArgumentError("No se puede dividir por cero!");[cite: 1]
    }

    print("Resultado: ${n / divisor}");[cite: 1]
  } on ArgumentError catch (e) {[cite: 1]
    print(e.message);[cite: 1]
  } catch (e) {[cite: 1]
    print("Error desconocido.");[cite: 1]
  }
}

// --- CLASES Y POLIMORFISMO ---

abstract class ExtraCalculations {
  double add10();
}

abstract class Figura {
  double area();
  double perimetro();
}

class Circulo implements Figura, ExtraCalculations {
  double? radio;

  @override
  double area() => pi * radio! * radio!;

  @override
  double perimetro() => 2 * pi * radio!;

  @override
  double add10() {
    return radio! + 10;
  }
}