import 'dart:io';

void main() {
  Map<String, String> contacts = {
    'Marie': '06 12 34 56 78',
    'Pierre': '06 98 76 54 32',
    'Julie': '06 55 44 33 22',
  };
  
  print('=== CARNET D\'ADRESSES ===');
  
  while (true) {
    print('');
    print('1. Afficher tous les contacts');
    print('2. Rechercher un contact');
    print('3. Ajouter un contact');
    print('4. Quitter');
    print('Votre choix:');
    
    String? choix = stdin.readLineSync();
    
    switch (choix) {
      case '1':
        print('');
        print('--- TOUS LES CONTACTS ---');
        for (var entry in contacts.entries) {
          print('${entry.key}: ${entry.value}');
        }
        break;
        
      case '2':
        print('Nom à rechercher:');
        String? nom = stdin.readLineSync();
        if (nom != null && contacts.containsKey(nom)) {
          print('Numéro de $nom: ${contacts[nom]}');
        } else {
          print('Contact non trouvé.');
        }
        break;
        
      case '3':
        print('Nom du nouveau contact:');
        String? nouveauNom = stdin.readLineSync();
        print('Numéro de téléphone:');
        String? numero = stdin.readLineSync();
        
        if (nouveauNom != null && numero != null) {
          contacts[nouveauNom] = numero;
          print('Contact ajouté.');
        }
        break;
        
      case '4':
        print('Au revoir.');
        return;
        
      default:
        print('Choix invalide.');
    }
  }
}