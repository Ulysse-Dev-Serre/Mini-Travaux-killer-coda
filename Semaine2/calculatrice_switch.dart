import 'dart:io';

void main() {
  print('=== CALCULATRICE ===');

  print('Premier nombre:');
  double a = double.parse(stdin.readLineSync() ?? '0');

  print('Opération (+, -, *, /):');
  String? operation = stdin.readLineSync();

  print('Deuxième nombre:');
  double b = double.parse(stdin.readLineSync() ?? '0');

  double resultat;
  String symbole;

  switch (operation) {
    case '+':
      resultat = a + b;
      symbole = '+';
      break;
    case '-':
      resultat = a - b;
      symbole = '-';
      break;
    case '*':
    case 'x':
    case '×': // Accepte plusieurs symboles
      resultat = a * b;
      symbole = '×';
      break;
    case '/':
    case '÷':
      if (b != 0) {
        resultat = a / b;
        symbole = '÷';
      } else {
        print('Erreur: Division par zéro !');
        return;
      }
      break;
    default:
      print('Opération non reconnue !');
      return;
  }

  print('');
  print('$a $symbole $b = $resultat');
}
