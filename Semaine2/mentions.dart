import 'dart:io';

void main() {
  print('=== CALCULATEUR DE MENTION ===');
  print('Entrez votre note sur 20:');

  String? input = stdin.readLineSync();
  double note = double.parse(input ?? '0');

  if (note >= 16) {
    print(' Mention: Très bien');
    print('Félicitations ! Excellent travail !');
  } else if (note >= 14) {
    print(' Mention: Bien');
    print('Très bon travail !');
  } else if (note >= 12) {
    print(' Mention: Assez bien');
    print('Bon travail !');
  } else if (note >= 10) {
    print(' Mention: Passable');
    print('Vous avez validé !');
  } else {
    print(' Échec');
    print('Courage, vous ferez mieux la prochaine fois !');
  }
}
