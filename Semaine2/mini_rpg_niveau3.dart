// Combat tour par tour
// Points de vie
// Conditions de victoire/défaite

import 'dart:io';
import 'dart:math';

void main() {
  print('=== MINI RPG ===');
  print('Entrez vos points de vie:');
  String? input = stdin.readLineSync();
  int pointsDeVie;
  try {
    pointsDeVie = int.parse(input ?? '100');
    if (pointsDeVie <= 0) throw Exception('HP must be positive');
  } catch (e) {
    print('HP invalide. Utilisant 100.');
    pointsDeVie = 100;
  }

  print('Entrez les points de vie de l\'ennemi:');
  String? inputEnnemi = stdin.readLineSync();
  int pointsDeVieEnnemi;
  try {
    pointsDeVieEnnemi = int.parse(inputEnnemi ?? '100');
    if (pointsDeVieEnnemi <= 0) throw Exception('HP must be positive');
  } catch (e) {
    print('HP ennemi invalide. Utilisant 100.');
    pointsDeVieEnnemi = 100;
  }

  int tour = 1;
  while (pointsDeVie > 0 && pointsDeVieEnnemi > 0) {
    print('\n--- Tour $tour ---');
    print('Vos PV: $pointsDeVie | PV Ennemi: $pointsDeVieEnnemi');

    // Player turn
    int degats = Random().nextInt(20) + 1; // Random damage 1-20
    pointsDeVieEnnemi -= degats;
    print('Vous attaquez et causez $degats dégâts !');

    if (pointsDeVieEnnemi <= 0) break;

    // Enemy turn
    int degatsEnnemi = Random().nextInt(15) + 1; // Random damage 1-15
    pointsDeVie -= degatsEnnemi;
    print('L\'ennemi attaque et cause $degatsEnnemi dégâts !');

    tour++;
  }

  if (pointsDeVie <= 0) {
    print('\nVous avez été vaincu !');
  } else {
    print('\nVous avez vaincu l\'ennemi !');
  }
}
