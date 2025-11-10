// Demander mot de passe
// Vérifier :
// Longueur >= 8
// Contient un chiffre
// Contient une majuscule
// Afficher si valide

import 'dart:io';

void main() {
  print('=== VALIDATEUR DE MOT DE PASSE ===');

  print('Entrez un mot de passe:');
  String? motDePasse = stdin.readLineSync();

  bool longueurValide = (motDePasse?.length ?? 0) >= 8;
  bool contientChiffre = false;
  bool contientMajuscule = false;

  // Vérification des caractères
  for (var i = 0; i < (motDePasse?.length ?? 0); i++) {
    var caractere = motDePasse![i];
    if (caractere.contains(RegExp(r'[0-9]'))) {
      contientChiffre = true;
    }
    if (caractere.contains(RegExp(r'[A-Z]'))) {
      contientMajuscule = true;
    }
  }

  // Conditions finales
  if (longueurValide && contientChiffre && contientMajuscule) {
    print('Mot de passe valide');
  } else {
    if (!longueurValide) {
      print(
        'Mot de passe invalide : longueur minimale de 8 caractères requise',
      );
    }
    if (!contientChiffre) {
      print('Mot de passe invalide : doit contenir au moins un chiffre');
    }
    if (!contientMajuscule) {
      print('Mot de passe invalide : doit contenir au moins une majuscule');
    }
  }
}

