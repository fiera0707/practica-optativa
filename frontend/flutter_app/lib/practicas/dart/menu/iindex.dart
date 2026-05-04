class Menu {
  void MostrarMenu() {
    print('=== Menú ===');[cite: 1]
    print('1. Desafío 1: Positivo, negativo o cero');[cite: 1]
    print('2. Desafío 2: Operaciones básicas entre dos números');[cite: 1]
    print('3. Desafío 3: Cuadrado de un número');[cite: 1]
    print('4. Desafío 4: Área de un círculo');[cite: 1]
    print('5. Desafío 5: Día de la semana');[cite: 1]
    print('6. Desafío 6: Impuesto');[cite: 1]
    print('7. Desafío 7: División');[cite: 1]
    print('8. Desafío 8: Suma de impares entre 1 y 100');[cite: 1]
    print('9. Desafío 9: Suma de fracciones');[cite: 1]
    print('10. Desafío 10: Palabra en orden inverso');[cite: 1]
    print('11. Desafío 11: Promedio de tres números');[cite: 1]
    print('12. Desafío 12: Número más grande de cinco');[cite: 1]
    print('13. Desafío 13: Palíndromo');[cite: 1]
    print('14. Desafío 14: Par o impar');[cite: 1]
    print('15. Desafío 15: En rango de 0 a 10');[cite: 1]
    print('0. q o tambien la palabra exit');[cite: 1]
  }
}

3. Cómo usarlo

Para que este menú realmente haga algo, necesitas un pequeño archivo que "encienda" la clase. Puedes crear un archivo llamado main.dart en la raíz de practicas o simplemente añadir esto al final del código anterior para probarlo:
Dart

void main() {
  Menu miMenu = Menu();[cite: 1]
  miMenu.MostrarMenu();[cite: 1]
}

Luego lo corres con:
dart lib/practicas/dart/menu/index.dart

¡Con esto ya tienes toda la colección de retos organizada!