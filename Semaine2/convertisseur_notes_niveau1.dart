// Note sur 20 → Lettre (A, B, C, D, E, F)
// 16-20: A
// 14-16: B
// 12-14: C
// 10-12: D
// 8-10: E
// 0-8: F

import 'dart:io';

void main() {
  print('=== CONVERTISSEUR DE NOTES ===');
  print('Entrez une note sur 20:');

  String? input = stdin.readLineSync();
  double note;
  
  try {
    note = double.parse(input ?? '0');
  } catch (e) {
    print('Note invalide : veuillez entrer un nombre.');
    return;
  }

  if (note < 0 || note > 20) {
    print('Note invalide : la note doit être entre 0 et 20.');
    return;
  }

  String mention;
  if (note >= 16) {
    mention = 'A';
  } else if (note >= 14) {
    mention = 'B';
  } else if (note >= 12) {
    mention = 'C';
  } else if (note >= 10) {
    mention = 'D';
  } else if (note >= 8) {
    mention = 'E';
  } else {
    mention = 'F';
  }

  print('Mention: $mention');
}