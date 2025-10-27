import 'dart:io';

void main() {
  print('=== VÉRIFICATEUR DE LIVRAISON ===');

  print('Montant du panier (€):');
  String? inputMontant = stdin.readLineSync();
  double montant = double.parse(inputMontant ?? '0');

  print('Êtes-vous membre Premium? (oui/non)');
  String? inputPremium = stdin.readLineSync();
  bool isPremium = inputPremium == 'oui';

  print('Code postal (2 chiffres):');
  String? cp = stdin.readLineSync();

  // Livraison gratuite SI:
  // - (Montant > 50€ ET zone locale) OU
  // - Membre Premium
  bool zoneLocale = cp == '75' || cp == '92' || cp == '93';
  bool livraisonGratuite = (montant > 50 && zoneLocale) || isPremium;

  print('');
  print('--- RÉSULTAT ---');
  print('Montant: $montant €');
  print('Premium: ${isPremium ? "Oui" : "Non"}');
  print('Zone locale: ${zoneLocale ? "Oui" : "Non"}');

  if (livraisonGratuite) {
    print(' Livraison GRATUITE !');

    if (isPremium) {
      print('Raison: Membre Premium');
    } else {
      print('Raison: Montant > 50€ en zone locale');
    }
  } else {
    print('Livraison: 5.00 €');
    print('Total: ${montant + 5} €');
  }
}
