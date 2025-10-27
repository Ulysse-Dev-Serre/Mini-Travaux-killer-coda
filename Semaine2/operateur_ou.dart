import 'dart:io';

void main() {
  print('=== CALCULATEUR DE TARIF ===');

  print('Êtes-vous étudiant? (oui/non)');
  String? estEtudiant = stdin.readLineSync();

  print('Quel est votre âge?');
  String? inputAge = stdin.readLineSync();
  int age = int.parse(inputAge ?? '0');

  double prixNormal = 12.00;
  double prixReduit = 8.00;

  // Une des DEUX conditions suffit
  if (estEtudiant == 'oui' || age >= 65) {
    print('');
    print(' Tarif réduit: $prixReduit €');

    if (estEtudiant == 'oui') {
      print('Raison: Étudiant');
    }
    if (age >= 65) {
      print('Raison: Senior');
    }
  } else {
    print('');
    print('Tarif normal: $prixNormal €');
  }
}
