// Exercice Bonus : Validateur de Mot de Passe
// Créez un validateur qui vérifie :

// Longueur >= 8 caractères ET
// Contient au moins un chiffre OU
// Contient un caractère spécial
// Utilisez && et || !

import 'dart:io';

void main() {
  print('=== VALIDATEUR DE MOT DE PASSE ===');

  String? motDePasse = stdin.readLineSync();

  bool longueurValide = (motDePasse?.length ?? 0) >= 8;
  bool contientChiffre = false;
  bool contientSpecial = false;

  // Vérification des caractères
  for (var i = 0; i < (motDePasse?.length ?? 0); i++) {
    var caractere = motDePasse![i];
    if (caractere.contains(RegExp(r'[0-9]'))) {
      contientChiffre = true;
    }
    if (caractere.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+]'))) {
      contientSpecial = true;
    }
  }

  // Conditions finales
  if (longueurValide && (contientChiffre || contientSpecial)) {
    print('Mot de passe valide');
  } else {
    print('Mot de passe invalide');
  }
}
