// Demander prix produit
// Si > 100€ : 10% réduction
// Si > 200€ : 20% réduction
// Afficher prix final

import 'dart:io';

void main() {
  print('===  Calculateur de réduction ===');
  print ('Entrez le prix initial du produit en €:');
  double prixInitial =  double.parse(stdin.readLineSync() ?? '0');

  double prixFinal;
  if (prixInitial > 200) {
    double reduction = prixInitial * 0.20;
    prixFinal = prixInitial - reduction;
  } else if (prixInitial > 100) {
    double reduction = prixInitial * 0.10;
    prixFinal = prixInitial - reduction;
  } else {
    prixFinal = prixInitial;
  }
  print('Prix final: $prixFinal €');
}