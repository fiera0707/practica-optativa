

import 'dart:io';

void main() {
  print("Ingrese el primer número:");[cite: 1]
  double? a = double.tryParse(stdin.readLineSync()!);[cite: 1]
  print("Ingrese el segundo número:");[cite: 1]
  double? b = double.tryParse(stdin.readLineSync()!);[cite: 1]

  const indeterminado = "Indeterminado";[cite: 1]
  if (a != null && b != null) {[cite: 1]
    print(
        "Suma: ${a + b}, Resta: ${a - b}, Multiplicación: ${a * b}, División: ${(b != 0 ? a / b : indeterminado)}");[cite: 1]
  } else {[cite: 1]
    print("Por favor, ingrese valores numéricos válidos.");[cite: 1]
  }
}