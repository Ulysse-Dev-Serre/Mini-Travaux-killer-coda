// Fonction qui vérifie si quelqu'un est majeur
bool estMajeur(int age) {
  return age >= 18;
}

// Fonction qui affiche un message selon l'âge
void afficherStatut(String nom, int age) {
  if (estMajeur(age)) {
    print('$nom est majeur(e) ($age ans)');
  } else {
    print('$nom est mineur(e) ($age ans)');
  }
}

// Fonction bonus: catégorie d'âge
String categorieAge(int age) {
  if (age < 13) {
    return 'Enfant';
  } else if (age < 18) {
    return 'Adolescent';
  } else if (age < 65) {
    return 'Adulte';
  } else {
    return 'Senior';
  }
}

void main() {
  print('=== VALIDATEUR D\'ÂGE ===');
  print('');
  
  // Tester avec plusieurs personnes
  afficherStatut('Ulysse Borris', 32);
  afficherStatut('Marc', 17);
  afficherStatut('Sophie', 18);
  afficherStatut('Thomas', 10);
  afficherStatut('Marie', 70);
  
  print('');
  print('=== CATÉGORIES D\'ÂGE ===');
  print('Ulysse (32 ans): ${categorieAge(32)}');
  print('Marc (17 ans): ${categorieAge(17)}');
  print('Thomas (10 ans): ${categorieAge(10)}');
  print('Marie (70 ans): ${categorieAge(70)}');
}
