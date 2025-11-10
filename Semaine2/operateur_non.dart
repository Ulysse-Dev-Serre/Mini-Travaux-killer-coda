void main() {
  bool estConnecte = false;
  bool estAdmin = true;

  print('=== VÉRIFICATION ACCÈS ===');

  // SI PAS connecté
  if (!estConnecte) {
    print(' Veuillez vous connecter');
  }

  // SI PAS admin
  if (!estAdmin) {
    print(' Accès réservé aux administrateurs');
  }

  // SI connecté ET admin
  if (estConnecte && estAdmin) {
    print(' Accès complet autorisé');
  }
}
