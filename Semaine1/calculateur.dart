import 'dart:io';

// Fonction pour calculer l'IMC
double calculerIMC(double poids, double taille) {
  return poids / (taille * taille);
}

// Fonction pour interpréter l'IMC
String interpreterIMC(double imc) {
  if (imc < 18.5) {
    return 'Insuffisance pondérale';
  } else if (imc < 25) {
    return 'Poids normal';
  } else if (imc < 30) {
    return 'Surpoids';
  } else {
    return 'Obésité';
  }
}

// Fonction pour calculer l'âge
int calculerAge(int anneeNaissance) {
  int anneeActuelle = 2025;
  return anneeActuelle - anneeNaissance;
}

// Fonctions de calcul
double additionner(double a, double b) {
  return a + b;
}

double soustraire(double a, double b) {
  return a - b;
}

double multiplier(double a, double b) {
  return a * b;
}

double diviser(double a, double b) {
  if (b == 0) {
    print('Erreur: Division par zéro!');
    return 0;
  }
  return a / b;
}

void main() {
  print('╔═══════════════════════════════════╗');
  print('║ CALCULATEUR PERSONNEL       ║');
  print('║ Version 1.0            ║');
  print('╚═══════════════════════════════════╝');
  print('');
  
  // Partie 1: Accueil
  print('--- BIENVENUE ---');
  print('Quel est votre prénom?');
  String? prenom = stdin.readLineSync();
  prenom = prenom ?? 'Utilisateur';
  
  print('');
  print('Bonjour $prenom! Ravi de vous voir!');
  print('');
  
  // Partie 2: Calcul IMC
  print('--- CALCUL IMC ---');
  print('Entrez votre poids (en kg):');
  String? poidsTexte = stdin.readLineSync();
  double poids = double.parse(poidsTexte ?? '75');
  
  print('Entrez votre taille (en mètres, ex: 1.75):');
  String? tailleTexte = stdin.readLineSync();
  double taille = double.parse(tailleTexte ?? '1.75');
  
  double imc = calculerIMC(poids, taille);
  String interpretation = interpreterIMC(imc);
  
  print('');
  print('Votre IMC: ${imc.toStringAsFixed(2)}');
  print('Interprétation: $interpretation');
  print('');
  
  // Partie 3: Calcul d'âge
  print('--- CALCUL D\'ÂGE ---');
  print('En quelle année êtes-vous né(e)?');
  String? anneeTexte = stdin.readLineSync();
  int anneeNaissance = int.parse(anneeTexte ?? '1993');
  
  int age = calculerAge(anneeNaissance);
  int anneesAvant100 = 100 - age;
  
  print('');
  print('Vous avez $age ans.');
  
  if (anneesAvant100 > 0) {
    print('Dans $anneesAvant100 ans, vous aurez 100 ans!');
  } else if (anneesAvant100 == 0) {
    print('Vous avez 100 ans! Joyeux anniversaire centenaire!');
  } else {
    print('Vous avez dépassé les 100 ans! Félicitations!');
  }
  print('');
  
  // Partie 4: Mini-calculatrice
  print('--- MINI-CALCULATRICE ---');
  print('Entrez le premier nombre:');
  String? num1Texte = stdin.readLineSync();
  double nombre1 = double.parse(num1Texte ?? '0');
  
  print('Entrez l\'opération (+, -, *, /):');
  String? operation = stdin.readLineSync();
  operation = operation ?? '+';
  
  print('Entrez le deuxième nombre:');
  String? num2Texte = stdin.readLineSync();
  double nombre2 = double.parse(num2Texte ?? '0');
  
  double resultat = 0;
  String symbole = '';
  
  if (operation == '+') {
    resultat = additionner(nombre1, nombre2);
    symbole = '+';
  } else if (operation == '-') {
    resultat = soustraire(nombre1, nombre2);
    symbole = '-';
  } else if (operation == '*' || operation == 'x' || operation == '×') {
    resultat = multiplier(nombre1, nombre2);
    symbole = '×';
  } else if (operation == '/') {
    resultat = diviser(nombre1, nombre2);
    symbole = '÷';
  } else {
    print('Opération non reconnue!');
    symbole = '?';
  }
  
  print('');
  print('$nombre1 $symbole $nombre2 = $resultat');
  print('');
  
  // Partie 5: Résumé
  print('╔═══════════════════════════════════╗');
  print('║     RÉSUMÉ FINAL        ║');
  print('╚═══════════════════════════════════╝');
  print('');
  print('Prénom: $prenom');
  print('Poids: $poids kg');
  print('Taille: $taille m');
  print('IMC: ${imc.toStringAsFixed(2)} ($interpretation)');
  print('Âge: $age ans');
  print('Dernier calcul: $nombre1 $symbole $nombre2 = $resultat');
  print('');
  print('Merci d\'avoir utilisé le Calculateur Personnel!');
  print('À bientôt, $prenom!');
}
