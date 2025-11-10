import 'dart:io';

void main() {
  print('=== MENU PRINCIPAL ===');
  print('1. Nouveau jeu');
  print('2. Charger partie');
  print('3. Options');
  print('4. Quitter');
  print('');
  print('Votre choix (1-4):');

  String? input = stdin.readLineSync();

  switch (input) {
    case '1':
      print('Lancement d\'une nouvelle partie...');
      break;
    case '2':
      print('Chargement de la dernière sauvegarde...');
      break;
    case '3':
      print('Ouverture des options...');
      break;
    case '4':
      print('Au revoir !');
      break;
    default:
      print('Choix invalide !');
  }
}
