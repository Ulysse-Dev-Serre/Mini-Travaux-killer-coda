import 'dart:io';

void main() {
  // Map de notes d'étudiants
  Map<String, double> notes = {
    'Marie': 16.5,
    'Pierre': 14.0,
    'Julie': 18.0,
  };
  
  print('=== CONSULTATION DE NOTES ===');
  print('Étudiants enregistrés: ${notes.keys.toList()}');
  print('');
  
  print('Nom de l\'étudiant:');
  String? nom = stdin.readLineSync();
  
  if (nom != null && notes.containsKey(nom)) {
    print('Note de $nom: ${notes[nom]}/20');
  } else {
    print('Étudiant non trouvé.');
  }
}