import 'dart:io';

void main() {
  print('=== VÉRIFICATEUR D\'ACCÈS ===');

  print('Avez-vous un billet? (oui/non)');
  String? aBillet = stdin.readLineSync();

  print('Quel est votre âge?');
  String? inputAge = stdin.readLineSync();
  int age = int.parse(inputAge ?? '0');

  // Les DEUX conditions doivent être vraies
  if (aBillet == 'oui' && age >= 18) {
    print('');
    print(' Accès autorisé ! Bienvenue !');
  } else {
    print('');
    print(' Accès refusé');

    // Expliquer pourquoi
    if (aBillet != 'oui') {
      print('Raison: Pas de billet');
    }
    if (age < 18) {
      print('Raison: Âge insuffisant');
    }
  }
}
