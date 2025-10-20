import 'dart:io';

void main() {
  print('=== MINI-CALCULATRICE ===');
  print('');
  
  // Demander le premier nombre
  print('Entrez le premier nombre:');
  String? nombre1Texte = stdin.readLineSync();
  double nombre1 = double.parse(nombre1Texte ?? '0');
  
  // Demander l'opération
  print('Entrez l\'opération (+, -, *, /):');
  String? operation = stdin.readLineSync();
  
  // Demander le deuxième nombre
  print('Entrez le deuxième nombre:');
  String? nombre2Texte = stdin.readLineSync();
  double nombre2 = double.parse(nombre2Texte ?? '0');
  
  // Calculer le résultat selon l'opération
  double resultat = 0;
  bool operationValide = true;
  
  if (operation == '+') {
    resultat = nombre1 + nombre2;
  } else if (operation == '-') {
    resultat = nombre1 - nombre2;
  } else if (operation == '*') {
    resultat = nombre1 * nombre2;
  } else if (operation == '/') {
    if (nombre2 != 0) {
      resultat = nombre1 / nombre2;
    } else {
      print('');
      print('ERREUR: Division par zéro impossible!');
      operationValide = false;
    }
  } else {
    print('');
    print('ERREUR: Opération invalide!');
    operationValide = false;
  }
  
  // Afficher le résultat
  if (operationValide) {
    print('');
    print('--- RÉSULTAT ---');
    print('$nombre1 $operation $nombre2 = $resultat');
  }
}
