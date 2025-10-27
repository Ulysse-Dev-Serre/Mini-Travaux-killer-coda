import 'dart:io';

void main() {
  print('=== VÉRIFICATEUR D\'ÂGE ===');
  print('Entrez votre âge:');

  String? input = stdin.readLineSync();
  int age = int.parse(input ?? '0');

  if (age >= 18) {
    print(' Vous êtes majeur');
    print('Vous pouvez voter');
  } else {
    print(' Vous êtes mineur');
    print('Vous ne pouvez pas encore voter');
  }
}
