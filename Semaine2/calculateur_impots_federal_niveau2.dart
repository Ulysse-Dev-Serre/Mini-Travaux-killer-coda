// Revenus annuels
// Tranches d'imposition différentes
// Calcul progressif
// Affichage détaillé

import 'dart:io';

void main() {
  print('=== CALCULATEUR D\'IMPÔTS FÉDÉRAL de CANADA ===');
  print('Entrez vos revenus annuels:');

  String? input = stdin.readLineSync();
  double revenus;

  try {
    revenus = double.parse(input ?? '0');
  } catch (e) {
    print('Revenus invalides : veuillez entrer un nombre.');
    return;
  }

  double impot = calculerImpotFederal(revenus);
  print('Votre impôt Canadien fédéral est : ${impot.toStringAsFixed(2)}');
}

// 2025 federal tax bracket rates and income thresholds
// 15.0% up to $57,375 of taxable income.
// 20.5% between $57,375.01 and $114,750.
// 26.0% between $114,750.01 and $177,882.
// 29.0% between $177,882.01 up to $253,414.
// 33.0% on any taxable income exceeding $253,414.

double calculerImpotFederal(double revenus) {
  double impot = 0.0;

  if (revenus <= 57375) {
    impot = revenus * 0.15;
  } else if (revenus <= 114750) {
    impot = 57375 * 0.15 + (revenus - 57375) * 0.205;
  } else if (revenus <= 177882) {
    impot = 57375 * 0.15 + (114750 - 57375) * 0.205 + (revenus - 114750) * 0.26;
  } else if (revenus <= 253414) {
    impot =
        57375 * 0.15 +
        (114750 - 57375) * 0.205 +
        (177882 - 114750) * 0.26 +
        (revenus - 177882) * 0.29;
  } else {
    impot =
        57375 * 0.15 +
        (114750 - 57375) * 0.205 +
        (177882 - 114750) * 0.26 +
        (253414 - 177882) * 0.29 +
        (revenus - 253414) * 0.33;
  }

  return impot;
}
