import 'dart:io';

void main() {
  // Demander le nom
  print('Comment vous appelez-vous?');
  String? nom = stdin.readLineSync();
  
  // Afficher un message personnalisé
  print('Bonjour $nom! Enchanté de vous rencontrer!');
}
