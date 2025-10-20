import 'dart:io';

void main() {
  print('=== CALCULATEUR D\'ÂGE ===');
  print('');
  
  // Demander l'année de naissance
  print('En quelle année êtes-vous né(e)?');
  String? anneeTexte = stdin.readLineSync();
  int annee = int.parse(anneeTexte ?? '1993');
  
  // Calculer l'âge
  int anneeActuelle = 2025;
  int age = anneeActuelle - annee;
  
  // Afficher le résultat
  print('');
  print('Vous avez $age ans (ou aurez $age ans cette année).');
  print('Dans 10 ans, vous aurez ${age + 10} ans.');
}
