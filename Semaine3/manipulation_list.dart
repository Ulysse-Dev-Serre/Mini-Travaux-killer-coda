import 'dart:io';

void main() {
  // Créer une liste de courses
  List<String> courses = ['Pain', 'Lait', 'Oeufs'];
  
  print('=== LISTE DE COURSES ===');
  print('Liste initiale: $courses');
  print('');
  
  // Ajouter un élément
  print('Ajouter "Fromage"...');
  courses.add('Fromage');
  print('Liste: $courses');
  print('');
  
  // Insérer au début
  print('Insérer "Beurre" au début...');
  courses.insert(0, 'Beurre');
  print('Liste: $courses');
  print('');
  
  // Supprimer un élément
  print('Supprimer "Lait"...');
  courses.remove('Lait');
  print('Liste: $courses');
  print('');
  
  // Afficher le nombre
  print('Nombre d\'articles: ${courses.length}');
  
  // Demander à l'utilisateur
  print('');
  print('Ajouter un article:');
  String? nouvel = stdin.readLineSync();
  if (nouvel != null && nouvel.isNotEmpty) {
    courses.add(nouvel);
    print('Liste finale: $courses');
  }
}