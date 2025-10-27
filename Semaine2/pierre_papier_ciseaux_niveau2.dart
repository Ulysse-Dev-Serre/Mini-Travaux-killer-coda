// Joueur vs Ordinateur
// Logique complète
// Compteur de victoires
// Niveau 3 : Avancé

import 'dart:io';
import 'dart:math';

void main() {
  print('=== Pierre, Papier, Ciseaux ===');
  print('Choisissez votre option :');
  print('1. Pierre');
  print('2. Papier');
  print('3. Ciseaux');

  int choixJoueur = int.parse(stdin.readLineSync() ?? '1');
  int choixOrdinateur = (1 + (Random().nextInt(3))).toInt();

  print('Vous avez choisi : $choixJoueur');
  print('L\'ordinateur a choisi : $choixOrdinateur');

  if (choixJoueur == choixOrdinateur) {
    print('Match nul !');
  } else if ((choixJoueur == 1 && choixOrdinateur == 3) ||
             (choixJoueur == 2 && choixOrdinateur == 1) ||
             (choixJoueur == 3 && choixOrdinateur == 2)) {
    print('Vous avez gagné !');
  } else {
    print('Vous avez perdu !');
  }
}