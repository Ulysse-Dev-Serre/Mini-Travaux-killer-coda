import 'dart:io';

void main() {
  List<String> etudiants = [
    'Marie Dupont',
    'Pierre Martin',
    'Julie Bernard',
    'Thomas Petit',
    'Sophie Durand'
  ];
  
  print('=== RECHERCHE D\'ÉTUDIANT ===');
  print('Liste des étudiants:');
  for (int i = 0; i < etudiants.length; i++) {
    print('  ${i + 1}. ${etudiants[i]}');
  }
  
  print('');
  print('Rechercher un étudiant:');
  String? recherche = stdin.readLineSync();
  
  if (recherche != null) {
    bool trouve = false;
    
    for (int i = 0; i < etudiants.length; i++) {
      if (etudiants[i].toLowerCase().contains(recherche.toLowerCase())) {
        print('Trouvé: ${etudiants[i]} (position ${i + 1})');
        trouve = true;
      }
    }
    
    if (!trouve) {
      print('Aucun étudiant trouvé.');
    }
  }
}