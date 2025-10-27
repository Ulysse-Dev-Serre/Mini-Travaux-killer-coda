import 'dart:io';

void main() {
  print('=== CALCULATEUR DE PRIX ===');
  print('Prix du produit:');

  String? input = stdin.readLineSync();
  double prix = double.parse(input ?? '0');

  // Si prix > 100€, réduction de 10%
  if (prix > 100) {
    double reduction = prix * 0.10;
    double prixFinal = prix - reduction;

    print('');
    print('Prix initial: $prix €');
    print('Réduction 10%: -$reduction €');
    print('Prix final: $prixFinal €');
    print('Vous économisez $reduction € !');
  } else {
    print('');
    print('Prix: $prix €');
    print('(Pas de réduction pour les achats < 100€)');
  }
}
