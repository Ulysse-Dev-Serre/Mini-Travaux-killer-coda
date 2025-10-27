// Exercice Bonus : Calculateur IMC Amélioré
// Créez un programme qui :

// Demande poids et taille
// Calcule IMC
// Affiche l'interprétation avec if/else if/else :
// < 18.5 : Insuffisance
// 18.5-25 : Normal
// 25-30 : Surpoids
// 30 : Obésité

import 'dart:io';
// // Ma solution
// void main() {
//   print('=== CALCULATEUR D\'IMC ===');
//   print('Entrez votre poids en kg:');
//   String? inputPoids = stdin.readLineSync();
//   double poids = double.parse(inputPoids ?? '0');

//   print('Entrez votre taille en cm:');
//   String? inputTaille = stdin.readLineSync();
//   double taille = double.parse(inputTaille ?? '0');

//   double imc = poids / ((taille / 100) * (taille / 100)); // Calcul de l'IMC

//   if (imc < 18.5) {
//     print('Votre IMC est de $imc, vous avez une insuffisance.');
//   } else if (imc >= 18.5 && imc < 25) {
//     print('Votre IMC est de $imc, vous avez un poids normal.');
//   } else if (imc >= 25 && imc < 30) {
//     print('Votre IMC est de $imc, vous avez un surpoids.');
//   } else {
//     print('Votre IMC est de $imc, vous avez une obésité.');
//   }
// }

// Solutions from killercoda
void main() {
  print('Poids (kg):');
  double poids = double.parse(stdin.readLineSync() ?? '0');

  print('Taille (m):');
  double taille = double.parse(stdin.readLineSync() ?? '0');

  double imc = poids / (taille * taille);

  String interpretation;
  if (imc < 18.5) {
    interpretation = 'Insuffisance pondérale';
  } else if (imc < 25) {
    interpretation = 'Poids normal';
  } else if (imc < 30) {
    interpretation = 'Surpoids';
  } else {
    interpretation = 'Obésité';
  }

  print('IMC: ${imc.toStringAsFixed(1)}');
  print('Interprétation: $interpretation');
}
