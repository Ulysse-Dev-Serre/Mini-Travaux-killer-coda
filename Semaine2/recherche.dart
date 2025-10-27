import 'dart:io';

void main() {
  // Liste de produits
  List<String> produits = [
    'iPhone 15',
    'MacBook Pro',
    'iPad Air',
    'AirPods Pro',
  ];

  print('=== RECHERCHE DE PRODUITS ===');
  print('Que cherchez-vous?');

  String? recherche = stdin.readLineSync();
  recherche = recherche?.toLowerCase() ?? '';

  print('');
  print('--- RÉSULTATS ---');

  bool trouve = false;

  for (var produit in produits) {
    if (produit.toLowerCase().contains(recherche)) {
      print(' $produit');
      trouve = true;
    }
  }

  if (!trouve) {
    print(' Aucun produit trouvé');
  }
}
