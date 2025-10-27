import 'dart:io';

void main() {
  print('=== RÉVISION I/O ===');
  print('Quel est votre prénom?');

  String? prenom = stdin.readLineSync();
  print('Bonjour $prenom!');

  print('Entrez un nombre:');
  String? texte = stdin.readLineSync();
  int nombre = int.parse(texte ?? '0');
  print('Le double de $nombre est ${nombre * 2}');
}
