import 'dart:io';

void main() {
  print('=== SYSTÈME DE CONNEXION ===');

  // Identifiants corrects (simulés)
  String usernameCorrect = 'admin'; //= → Assigner une valeur
  String passwordCorrect = '1234';

  // Demander username
  print('Nom d\'utilisateur:');
  String? username = stdin.readLineSync();

  // Vérifier username
  if (username == usernameCorrect) {//== → Comparer deux valeurs
    // Username correct, demander password
    print('Mot de passe:');
    String? password = stdin.readLineSync();

    // Vérifier password
    if (password == passwordCorrect) {
      print('');
      print(' Accès autorisé !');
      print('Bienvenue $username !');
    } else {
      print('');
      print(' Mot de passe incorrect');
    }
  } else {
    print('');
    print(' Nom d\'utilisateur incorrect');
  }
}
